import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:flutter_project/src/domain/entities/product_image/product_image_failures.dart';
import 'package:flutter_project/src/domain/entities/product_image/product_image.dart';

abstract class IProductImageRepository {
  Future<Either<ProductImageFailure, ProductImage>> fetch(
    String filename,
  );
}
