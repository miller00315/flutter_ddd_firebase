import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_project/src/infrastructure/data_sources/network/product/i_products_data_source.dart';
import 'package:flutter_project/src/infrastructure/dtos/product/product_dto.dart';

class ProductsDataSource implements IProductDataSource {
  final FirebaseFirestore _firestore;
  final FirebaseStorage _firebaseStorage;

  ProductsDataSource(
    this._firestore,
    this._firebaseStorage,
  );

  @override
  Future delete(ProductDto productDto) async {
    if (productDto.filename != null) {
      await _firebaseStorage.ref('images').child(productDto.filename!).delete();
    }

    await _firestore.collection('products').doc(productDto.id).delete();
  }

  @override
  Future update(ProductDto product) async {
    await _firestore
        .collection('products')
        .doc(product.id)
        .update(product.toJson());
  }

  @override
  Stream<List<ProductDto>> watchAll() async* {
    final collection = _firestore.collection('products');

    yield* collection.snapshots().map((snapshot) {
      final data = snapshot.docs;
      List<ProductDto> products = [];

      //tenta fazer o parse e retorna apenas itens válidos
      for (var element in data) {
        try {
          products.add(ProductDto.fromFirestore(element));
          // ignore: empty_catches
        } catch (e) {
          /// O erro deve ser tratado 
        }
      }

      return products;
    });
  }
}
