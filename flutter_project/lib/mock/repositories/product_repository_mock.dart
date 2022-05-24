import 'package:flutter_project/app/features/domain/entities/product_entity.dart';
import 'package:flutter_project/app/core/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_project/app/features/domain/repositories/i_product_repository.dart';

class ProductRepositoryMock implements IProductRepository {
  @override
  Future<Either<Failure, List<ProductEntity>>> fetchProducts() {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Null>> updateProduct(ProductEntity product) {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, dynamic>> deleteProduct(int id) {
    throw UnimplementedError();
  }
}
