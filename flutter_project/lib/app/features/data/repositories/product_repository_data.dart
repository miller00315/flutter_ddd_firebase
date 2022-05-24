import 'package:flutter_project/app/features/data/data_sources/product_data_source.dart';
import 'package:flutter_project/app/features/domain/entities/product_entity.dart';
import 'package:flutter_project/app/core/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_project/app/features/domain/repositories/i_product_repository.dart';

class ProductRepositoryData implements IProductRepository {
  final IProductDataSource productDataSource;

  ProductRepositoryData(this.productDataSource);

  @override
  Future<Either<Failure, List<ProductEntity>>> fetchProducts() async {
    try {
      final products = await productDataSource.fetchProducts();

      return Right(products);
    } catch (e) {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, dynamic>> updateProduct(ProductEntity product) async {
    try {
      await productDataSource.updateProduct(product);

      return const Right(null);
    } catch (e) {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, dynamic>> deleteProduct(int id) async {
    try {
      await productDataSource.deleteProduct(id);

      return const Right(null);
    } catch (e) {
      return Left(ServerFailure());
    }
  }
}
