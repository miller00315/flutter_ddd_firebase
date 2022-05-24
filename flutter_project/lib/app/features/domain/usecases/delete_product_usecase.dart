import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_project/app/core/error/failures.dart';
import 'package:flutter_project/app/core/usecase/usecase.dart';
import 'package:flutter_project/app/features/domain/repositories/i_product_repository.dart';

abstract class IDeleteProductUsecase
    implements UseCase<dynamic, DeleteProductParams> {}

class DeleteProductUsecaseImpl implements IDeleteProductUsecase {
  final IProductRepository repository;

  DeleteProductUsecaseImpl(this.repository);

  @override
  Future<Either<Failure, dynamic>> call(DeleteProductParams params) async {
    return await repository.deleteProduct(params.id);
  }
}

class DeleteProductParams extends Equatable {
  final int id;

  const DeleteProductParams(this.id);

  @override
  List<Object?> get props => [id];

  @override
  String toString() => '''
    DeleteProductParams {
      id: $id,
    }
  ''';
}
