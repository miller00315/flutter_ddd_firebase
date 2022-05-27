import 'dart:async';

import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:firebase_storage_mocks/firebase_storage_mocks.dart';
import 'package:flutter_project/src/infrastructure/data_sources/network/product/products_data_source.dart';
import 'package:flutter_project/src/infrastructure/dtos/product/product_dto.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../mocks/fake_data.dart';

void main() {
  final instance = FakeFirebaseFirestore();

  final firebaseStorageMock = MockFirebaseStorage();

  final productsDataSource = ProductsDataSource(instance, firebaseStorageMock);

  StreamSubscription? listener;

  group('ProductDataSource =>', () {
    setUpAll(() async {
      await instance.collection('products').add(fakeJson);
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
      const testDescription = 'new description';

      final snapshot = await instance.collection('products').get();

      final productDto = ProductDto.fromFirestore(snapshot.docs.first);

      await productsDataSource.update(
        productDto.copyWith(description: testDescription),
      );

      final updatedSnapshot = await instance.collection('products').get();

      expect(updatedSnapshot.docs.first['description'], testDescription);
    });
  });
}
