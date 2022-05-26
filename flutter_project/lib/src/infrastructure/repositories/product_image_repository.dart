import 'dart:typed_data';

import 'package:flutter/services.dart';
import 'package:flutter_project/src/domain/entities/product_image/product_image.dart';
import 'package:flutter_project/src/domain/entities/product_image/product_image_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_project/src/domain/repositories/i_product_image_repository.dart';
import 'package:flutter_project/src/infrastructure/data_sources/network/prodct_image/i_prodcut_image_datasource.dart';
import 'package:flutter_project/src/infrastructure/dtos/prodcut_image/product_image_dto.dart';

class ProductImageRepository implements IProductImageRepository {
  final IProductImageDataSource _productDataSource;

  ProductImageRepository(
    this._productDataSource,
  );

  @override
  Future<Either<ProductImageFailure, ProductImage>> fetch(
      String filename) async {
    try {
      final result = await _productDataSource.getDownloadUrl(filename);

      return right(result.toDomain());
    } on PlatformException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const ProductImageFailure.insufficientPermissions());
      } else if (e.message!.contains('NOT_FOUND')) {
        return left(const ProductImageFailure.unableToFetch());
      } else {
        return left(const ProductImageFailure.unexpected());
      }
    }
  }
}
