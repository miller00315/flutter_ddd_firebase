import 'dart:ffi';

import 'package:dartz/dartz.dart';
import 'package:flutter_project/app/core/error/failures.dart';
import 'package:flutter_project/app/features/domain/entities/product_entity.dart';

abstract class IProductRepository {
  Future<Either<Failure, List<ProductEntity>>> fetchProducts();

  Future<Either<Failure, dynamic>> updateProduct(ProductEntity product);

  Future<Either<Failure, dynamic>> deleteProduct(int id);
}
