import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:flutter_project/src/infrastructure/data_sources/network/products_data_source.dart';
import 'package:flutter_project/src/infrastructure/dtos/product/product_dto.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:uuid/uuid.dart';

void main() {
  Map<String, dynamic> json = {
    'title': 'test',
    'type': 'test',
    'description': 'teste',
    'filename': '0',
    'height': 2,
    'width': 2,
    'price': 2,
    'rating': 2,
    'created': Timestamp.fromDate(DateTime.now())
  };

  final instance = FakeFirebaseFirestore();

  final productsDataSource = ProductsDataSource(instance);

  StreamSubscription? listener;

  //TODO: Verificar melhor maneira de realizar estes testes
  group('ProductDataSource =>', () {
    setUpAll(() async {
      await instance.collection('products').add(json);
    });

    tearDown(() {
      listener?.cancel();
    });

    test('should listen firebase database', () async {
      final snapshot = await instance.collection('products').get();

      final productDto = ProductDto.fromFirestore(snapshot.docs.first);

      listener = productsDataSource.watchAll().listen((event) {
        expectLater(event.length, 1);
        expectLater(event.first, productDto);
      });
    });

    test('should update firestore value when call update', () async {
      final snapshot = await instance.collection('products').get();

      final productDto = ProductDto.fromFirestore(snapshot.docs.first);

      await productsDataSource.update(
        productDto.copyWith(description: 'new description'),
      );

      final updatedSnapshot = await instance.collection('products').get();

      expect(updatedSnapshot.docs.first['description'], 'new description');
    });

    test('should not delete if item id not exists', () async {
      final snapshot = await instance.collection('products').get();

      await productsDataSource.delete(const Uuid().v1().toString());

      final updatedSnapshot = await instance.collection('products').get();

      expect(updatedSnapshot.docs.length, snapshot.docs.length);
    });
  });
}
