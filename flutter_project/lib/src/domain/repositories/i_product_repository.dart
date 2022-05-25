import 'package:dartz/dartz.dart';
import 'package:flutter_project/src/domain/entities/product.dart';
import 'package:flutter_project/src/domain/entities/product_failures.dart';

abstract class IProductRepository {
  Stream<Either<ProductFailure, List<Product>>> watchAll();
  Future<Either<ProductFailure, Unit>> update(Product product);
  Future<Either<ProductFailure, Unit>> delete(Product product);
}
