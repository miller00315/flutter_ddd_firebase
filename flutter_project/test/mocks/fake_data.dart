import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_project/src/domain/core/value_objects.dart';
import 'package:flutter_project/src/domain/entities/product/product.dart';
import 'package:flutter_project/src/domain/entities/product/value_objects.dart';
import 'package:flutter_project/src/infrastructure/dtos/product/product_dto.dart';
import 'package:uuid/uuid.dart';
import 'package:faker/faker.dart';

final Product fakeProduct = Product(
  id: UniqueId.fromUniqueString(const Uuid().v1().toString()),
  title: ProductTitle(faker.person.name()),
  type: ProductType(faker.person.name()),
  description: faker.person.name(),
  filename: faker.person.name(),
  height: Random().nextInt(10),
  width: Random().nextInt(10),
  price: ProductPrice(Random().nextDouble() * 10),
  rating: Random().nextInt(10),
  created: DateTime.now(),
);

Map<String, dynamic> fakeJson = {
  'title': faker.person.name(),
  'type': faker.person.name(),
  'description': faker.person.name(),
  'filename': faker.person.name(),
  'height': Random().nextInt(10),
  'width': Random().nextInt(10),
  'price': Random().nextDouble() * 10,
  'rating': Random().nextInt(10),
  'created': Timestamp.fromDate(DateTime.now())
};

final fakeProductDto =
    ProductDto.fromDomain(fakeProduct).copyWith(created: fakeProduct.created);
