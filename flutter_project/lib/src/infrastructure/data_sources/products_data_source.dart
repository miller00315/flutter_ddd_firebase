export 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:flutter_project/src/infrastructure/data_sources/i_products_data_source.dart';
import 'package:flutter_project/src/infrastructure/dtos/product_dto.dart';

class ProductsDataSource implements IProductDataSource {
  final FirebaseFirestore _firestore;

  ProductsDataSource(this._firestore);

  @override
  Future delete(String id) async {
    final exists = await _firestore.collection('products').doc(id).get();

    if (exists.data() == null) {
      throw PlatformException(
        code: '404',
        message: 'NOT_FOUND',
      );
    }

    await _firestore.collection('products').doc(id).delete();
  }

  @override
  Future update(ProductDto product) async {
    final exists =
        await _firestore.collection('products').doc(product.id).get();

    if (exists.data() == null) {
      throw PlatformException(
        code: '404',
        message: 'NOT_FOUND',
      );
    }

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
