import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:flutter_project/mocks/fake_data.dart';
import 'package:flutter_project/src/infrastructure/dtos/product/product_dto.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:uuid/uuid.dart';

main() {
  final instance = FakeFirebaseFirestore();

  group('ProductDto group =>', () {
    test('should return a ProductDto from a fakeJson', () {
      final productDto = ProductDto.fromJson(fakeJson);

      expect(productDto.id, null);
      expect(productDto.title, fakeJson['title']);
      expect(productDto.type, fakeJson['type']);
      expect(productDto.description, fakeJson['description']);
      expect(productDto.filename, fakeJson['filename']);
      expect(productDto.height, fakeJson['height']);
      expect(productDto.price, fakeJson['price']);
      expect(productDto.rating, fakeJson['rating']);
    });
    test('should generate a ProductDto from a productEntity', () {
      final productDto = ProductDto.fromDomain(fakeProduct);

      expect(productDto.id, fakeProduct.id.getOrCrash());
      expect(productDto.title, fakeProduct.title.getOrCrash());
      expect(productDto.type, fakeProduct.type.getOrCrash());
      expect(productDto.description, fakeProduct.description);
      expect(productDto.filename, fakeProduct.filename);
      expect(productDto.height, fakeProduct.height);
      expect(productDto.price, fakeProduct.price.getOrCrash());
      expect(productDto.rating, fakeProduct.rating);
    });

    test('should generate a fakeJson from a ProductDto', () {
      final productDto = ProductDto(
        id: const Uuid().v1().toString(),
        title: 'test',
        type: 'test',
        description: 'teste',
        filename: '0',
        height: 2,
        width: 2,
        price: 2,
        rating: 2,
      );

      final productJson = productDto.toJson();

      expect(productJson['title'], fakeJson['title']);
      expect(productJson['type'], fakeJson['type']);
      expect(productJson['description'], fakeJson['description']);
      expect(productJson['filename'], fakeJson['filename']);
      expect(productJson['height'], fakeJson['height']);
      expect(productJson['price'], fakeJson['price']);
      expect(productJson['rating'], fakeJson['rating']);
    });

    test('should return a fakeProduct from a productDto', () {
      final productDto = fakeProductDto;

      final productEntity = productDto.toDomain();

      expect(productDto.id, productEntity.id.getOrCrash());
      expect(productDto.title, productEntity.title.getOrCrash());
      expect(productDto.type, productEntity.type.getOrCrash());
      expect(productDto.description, productEntity.description);
      expect(productDto.filename, productEntity.filename);
      expect(productDto.height, productEntity.height);
      expect(productDto.price, productEntity.price.getOrCrash());
      expect(productDto.rating, productEntity.rating);
      expect(productDto.created, productEntity.created);
    });

    test('should return a ProductDto from a snapshot', () async {
      await instance.collection('products').add(fakeJson);

      final snapshot = await instance.collection('products').get();

      final productSnapshot = snapshot.docs.first;

      final productDto = ProductDto.fromFirestore(productSnapshot);

      Timestamp timestamp = productSnapshot['created'];

      expect(productDto.id, productSnapshot.id);
      expect(productDto.title, productSnapshot['title']);
      expect(productDto.type, productSnapshot['type']);
      expect(productDto.description, productSnapshot['description']);
      expect(productDto.filename, productSnapshot['filename']);
      expect(productDto.height, productSnapshot['height']);
      expect(productDto.price, productSnapshot['price']);
      expect(productDto.rating, productSnapshot['rating']);
      expect(productDto.created, timestamp.toDate());
    });
  });
}
