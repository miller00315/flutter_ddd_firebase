import 'dart:math';

import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:flutter_project/src/infrastructure/data_sources/products_data_source.dart';
import 'package:flutter_project/src/infrastructure/dtos/product_dto.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
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
  };

  final instance = FakeFirebaseFirestore();

  final productsDataSource = ProductsDataSource(instance);

  group('ProductDataSource =>', () {
    setUp(() async {
      await instance.collection('products').add(json);
    });

    tearDown(() async {});

    test('should listen firebase database', () async {
      final snapshot = await instance.collection('products').get();

      final productDto = ProductDto.fromFirestore(snapshot.docs.first);

      productsDataSource.watchAll().listen((event) {
        expect(event.length, 1);

        expect(event.first, productDto);
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

    test('should do not update item id not exists', () async {
      final snapshot = await instance.collection('products').get();

      final productDto = ProductDto.fromFirestore(snapshot.docs.first);

      await productsDataSource.update(
        productDto.copyWith(
          id: const Uuid().v1().toString(),
        ),
      );

      final updatedSnapshot = await instance.collection('products').get();

      expect(updatedSnapshot.docs.first.id, productDto.id);
    });

    test('should not delete if item id not exists', () async {
      final snapshot = await instance.collection('products').get();

      await productsDataSource.delete(const Uuid().v1().toString());

      final updatedSnapshot = await instance.collection('products').get();

      expect(updatedSnapshot.docs.length, snapshot.docs.length);
    });

    test('should delete when item id exists', () async {
      final snapshot = await instance.collection('products').get();

      await productsDataSource.delete(snapshot.docs.first.id);

      final updatedSnapshot = await instance.collection('products').get();

      print(updatedSnapshot.docs.length);
    });

    test('should listen when new dat is added to database', () async {
      productsDataSource.watchAll().listen((event) {
        expect(event.length, greaterThan(0));
        expect(event.length, 1);
      });

      await instance.collection('products').add(json);
    });
  });
}
