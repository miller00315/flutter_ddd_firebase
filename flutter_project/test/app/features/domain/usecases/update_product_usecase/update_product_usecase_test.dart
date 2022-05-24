import 'package:dartz/dartz.dart';
import 'package:flutter_project/app/core/error/failures.dart';
import 'package:flutter_project/app/features/domain/repositories/i_product_repository.dart';
import 'package:flutter_project/app/features/domain/usecases/update_product_usecase.dart';
import 'package:flutter_project/mock/fake_data/products_fake_data.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'update_product_usecase_test.mocks.dart';

@GenerateMocks([IProductRepository])
main() {
  final repositoryMock = MockIProductRepository();

  final updateProductUsecase = UpdateProductUsecaseImpl(repositoryMock);

  final product = ProductFakeData.products.first;

  group('UpdateProductUsecase group =>', () {
    test('should be right when delete product success', () async {
      when(repositoryMock.updateProduct(product)).thenAnswer(
        (_) => Future.value(
          const Right(null),
        ),
      );

      final res = await updateProductUsecase(UpdateProductParams(product));

      expect(res.isRight(), true);

      res.fold(
        (l) => expect(l, null),
        (r) => expect(r, null),
      );
    });

    test('should be left and return a ServerFailure when update product fail',
        () async {
      when(repositoryMock.updateProduct(product)).thenAnswer(
        (_) => Future.value(
          Left(ServerFailure()),
        ),
      );

      final res = await updateProductUsecase(UpdateProductParams(product));

      expect(res.isLeft(), true);

      res.fold(
        (l) => expect(l, ServerFailure()),
        (r) => expect(r, null),
      );
    });
  });
}
