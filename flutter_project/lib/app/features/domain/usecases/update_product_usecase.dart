import 'package:equatable/equatable.dart';
import 'package:flutter_project/app/core/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_project/app/core/usecase/usecase.dart';
import 'package:flutter_project/app/features/domain/entities/product_entity.dart';
import 'package:flutter_project/app/features/domain/repositories/i_product_repository.dart';

abstract class IUpdateProductUsecase
    implements UseCase<dynamic, UpdateProductParams> {}

class UpdateProductUsecaseImpl implements IUpdateProductUsecase {
  final IProductRepository repository;

  UpdateProductUsecaseImpl(this.repository);

  @override
  Future<Either<Failure, dynamic>> call(UpdateProductParams params) async {
    return await repository.updateProduct(params.product);
  }
}

class UpdateProductParams extends Equatable {
  final ProductEntity product;

  const UpdateProductParams(this.product);

  @override
  List<Object?> get props => [product];

  @override
  String toString() => '''
    UpdateProductParams {
      product: $product,
    }
  ''';
}
