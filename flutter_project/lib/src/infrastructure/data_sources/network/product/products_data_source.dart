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
    await _firestore.collection('products').doc(productDto.id).delete();

    if (productDto.filename != null) {
      await _firebaseStorage.ref('images').child(productDto.filename!).delete();
    }
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

    yield* collection.snapshots().map(
          (snapshot) => snapshot.docs
              .map((doc) => ProductDto.fromFirestore(doc))
              .toList(),
        );
  }
}
