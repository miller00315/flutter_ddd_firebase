import 'package:flutter/services.dart';
import 'package:flutter_project/src/domain/entities/product/product_failures.dart';
import 'package:flutter_project/src/domain/entities/product/product.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_project/src/domain/repositories/i_product_repository.dart';
import 'package:flutter_project/src/infrastructure/data_sources/network/i_products_data_source.dart';
import 'package:flutter_project/src/infrastructure/dtos/product_dto.dart';
import 'package:rxdart/rxdart.dart';

class ProductRepository implements IProductRepository {
  final IProductDataSource productDataSource;

  ProductRepository(this.productDataSource);

  @override
  Future<Either<ProductFailure, Unit>> delete(Product product) async {
    try {
      await productDataSource.delete(product.id.getOrCrash());

      return right(unit);
    } on PlatformException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const ProductFailure.insufficientPermissions());
      } else if (e.message!.contains('NOT_FOUND')) {
        return left(const ProductFailure.unableToDelete());
      } else {
        return left(const ProductFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<ProductFailure, Unit>> update(Product product) async {
    try {
      await productDataSource.update(ProductDto.fromDomain(product));

      return right(unit);
    } on PlatformException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const ProductFailure.insufficientPermissions());
      } else if (e.message!.contains('NOT_FOUND')) {
        return left(const ProductFailure.unableToUpdate());
      } else {
        return left(const ProductFailure.unexpected());
      }
    }
  }

  @override
  Stream<Either<ProductFailure, List<Product>>> watchAll() async* {
    yield* productDataSource
        .watchAll()
        .map(
          (snapshot) => right<ProductFailure, List<Product>>(
            snapshot.map((e) => e.toDomain()).toList(),
          ),
        )
        .onErrorReturnWith((e, s) {
      if (e is PlatformException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const ProductFailure.insufficientPermissions());
      } else {
        return left(const ProductFailure.unexpected());
      }
    });
  }
}
