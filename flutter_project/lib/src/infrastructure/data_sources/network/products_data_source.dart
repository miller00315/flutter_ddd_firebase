export 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:async';
import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_project/src/infrastructure/data_sources/network/i_products_data_source.dart';
import 'package:flutter_project/src/infrastructure/dtos/product_dto.dart';
import 'package:flutter_project/src/infrastructure/dtos/product_image_dto.dart';

class ProductsDataSource implements IProductDataSource {
  final FirebaseFirestore _firestore;
  final FirebaseStorage _firebaseStore;

  ProductsDataSource(
    this._firestore,
    this._firebaseStore,
  );

  @override
  Future delete(String id) async {
    await _firestore.collection('products').doc(id).delete();
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

  @override
  Future<ProductImageDto> getDownloadUrl(String filename) async {
    return ProductImageDto(
        url: await _firebaseStore
            .ref('images')
            .child(filename)
            .getDownloadURL());
  }
}
