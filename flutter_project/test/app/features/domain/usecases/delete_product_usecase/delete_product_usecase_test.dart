import 'package:dartz/dartz.dart';
import 'package:flutter_project/app/core/error/failures.dart';
import 'package:flutter_project/app/features/domain/repositories/i_product_repository.dart';
import 'package:flutter_project/app/features/domain/usecases/delete_product_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'delete_product_usecase_test.mocks.dart';

@GenerateMocks([IProductRepository])
main() {
  final repositoryMock = MockIProductRepository();

  final deleteProductUsecase = DeleteProductUsecaseImpl(repositoryMock);

  group('DeleteProductUsecase group =>', () {
    test('should be right when delete product success', () async {
      when(repositoryMock.deleteProduct(1)).thenAnswer(
        (_) => Future.value(
          const Right(null),
        ),
      );

      final res = await deleteProductUsecase(const DeleteProductParams(1));

      expect(res.isRight(), true);

      res.fold(
        (l) => expect(l, null),
        (r) => expect(r, null),
      );
    });

    test('should be left and return a ServerFailure when delete product fail',
        () async {
      when(repositoryMock.deleteProduct(1)).thenAnswer(
        (_) => Future.value(
          Left(ServerFailure()),
        ),
      );

      final res = await deleteProductUsecase(const DeleteProductParams(1));

      expect(res.isLeft(), true);

      res.fold(
        (l) => expect(l, ServerFailure()),
        (r) => expect(r, null),
      );
    });
  });
}
