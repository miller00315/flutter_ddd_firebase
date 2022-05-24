import 'package:dartz/dartz.dart';
import 'package:flutter_project/app/core/error/failures.dart';
import 'package:flutter_project/app/core/usecase/usecase.dart';
import 'package:flutter_project/app/features/domain/entities/product_entity.dart';
import 'package:flutter_project/app/features/domain/repositories/i_product_repository.dart';

abstract class IFetchProductsUsecase
    implements UseCase<List<ProductEntity>, NoParams> {}

class FetchProductUsecaseImpl implements IFetchProductsUsecase {
  final IProductRepository repository;

  FetchProductUsecaseImpl(this.repository);

  @override
  Future<Either<Failure, List<ProductEntity>>> call(NoParams params) async {
    return await repository.fetchProducts();
  }
}
