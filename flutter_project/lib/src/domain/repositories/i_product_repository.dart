import 'package:dartz/dartz.dart';
import 'package:flutter_project/src/domain/entities/product_entity.dart';
import 'package:flutter_project/src/domain/entities/product_failures.dart';

abstract class IProductRepository {
  Stream<Either<ProductFailure, List<ProductEntity>>> watchAll();
  Future<Either<ProductFailure, Unit>> update(ProductEntity product);
  Future<Either<ProductFailure, Unit>> delete(ProductEntity product);
}
