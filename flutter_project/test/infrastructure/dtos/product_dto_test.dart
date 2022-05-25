import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:flutter_project/src/domain/core/value_objects.dart';
import 'package:flutter_project/src/domain/entities/product_entity.dart';
import 'package:flutter_project/src/domain/entities/value_objects.dart';
import 'package:flutter_project/src/infrastructure/dtos/product_dto.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:uuid/uuid.dart';

main() {
  final instance = FakeFirebaseFirestore();

  final ProductEntity product = ProductEntity(
    id: UniqueId.fromUniqueString(const Uuid().v1().toString()),
    title: ProductTitle('test'),
    type: ProductType('test'),
    description: 'teste',
    filename: '0',
    height: 2,
    width: 2,
    price: ProductPrice(2),
    rating: 2,
    created: DateTime.now(),
  );

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

  test('should return a ProductDto from a json', () {
    final productDto = ProductDto.fromJson(json);

    expect(productDto.id, null);
    expect(productDto.title, json['title']);
    expect(productDto.type, json['type']);
    expect(productDto.description, json['description']);
    expect(productDto.filename, json['filename']);
    expect(productDto.height, json['height']);
    expect(productDto.price, json['price']);
    expect(productDto.rating, json['rating']);
  });

  group('ProductDto group =>', () {
    test('should generate a ProductDto from a productEntity', () {
      final productDto = ProductDto.fromDomain(product);

      expect(productDto.id, product.id.getOrCrash());
      expect(productDto.title, product.title.getOrCrash());
      expect(productDto.type, product.type.getOrCrash());
      expect(productDto.description, product.description);
      expect(productDto.filename, product.filename);
      expect(productDto.height, product.height);
      expect(productDto.price, product.price.getOrCrash());
      expect(productDto.rating, product.rating);
    });

    test('should generate a json from a ProductDto', () {
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

      expect(productJson['title'], json['title']);
      expect(productJson['type'], json['type']);
      expect(productJson['description'], json['description']);
      expect(productJson['filename'], json['filename']);
      expect(productJson['height'], json['height']);
      expect(productJson['price'], json['price']);
      expect(productJson['rating'], json['rating']);
    });

    test('should return a ProductEntity from a productDto', () {
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

      final productEntity = productDto.toDomain();

      expect(productDto.id, productEntity.id.getOrCrash());
      expect(productDto.title, productEntity.title);
      expect(productDto.type, productEntity.type);
      expect(productDto.description, productEntity.description);
      expect(productDto.filename, productEntity.filename);
      expect(productDto.height, productEntity.height);
      expect(productDto.price, productEntity.price);
      expect(productDto.rating, productEntity.rating);
    });

    test('should return a ProductDto from a snapshot', () async {
      await instance.collection('products').add(json);

      final snapshot = await instance.collection('products').get();

      final productSnapshot = snapshot.docs.first;

      final productDto = ProductDto.fromFirestore(productSnapshot);

      expect(productDto.id, productSnapshot.id);
      expect(productDto.title, productSnapshot['title']);
      expect(productDto.type, productSnapshot['type']);
      expect(productDto.description, productSnapshot['description']);
      expect(productDto.filename, productSnapshot['filename']);
      expect(productDto.height, productSnapshot['height']);
      expect(productDto.price, productSnapshot['price']);
      expect(productDto.rating, productSnapshot['rating']);
    });
  });
}
