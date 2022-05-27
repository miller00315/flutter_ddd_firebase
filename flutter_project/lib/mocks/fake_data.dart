import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_project/src/domain/core/value_objects.dart';
import 'package:flutter_project/src/domain/entities/product/product.dart';
import 'package:flutter_project/src/domain/entities/product/value_objects.dart';
import 'package:flutter_project/src/infrastructure/dtos/product/product_dto.dart';
import 'package:uuid/uuid.dart';

final Product fakeProduct = Product(
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

Map<String, dynamic> fakeJson = {
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

final fakeProductDto =
    ProductDto.fromDomain(fakeProduct).copyWith(created: fakeProduct.created);
