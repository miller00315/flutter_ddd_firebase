import 'package:dartz/dartz.dart';
import 'package:flutter_project/app/core/error/failures.dart';
import 'package:flutter_project/app/core/usecase/usecase.dart';
import 'package:flutter_project/app/features/domain/repositories/i_product_repository.dart';
import 'package:flutter_project/app/features/domain/usecases/fetch_products_usecase.dart';
import 'package:flutter_project/mock/fake_data/products_fake_data.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'fetch_products_usecase_test.mocks.dart';

@GenerateMocks([IProductRepository])
main() {
  final productRepositoryMock = MockIProductRepository();

  final fetchProductsUsecase = FetchProductUsecaseImpl(productRepositoryMock);

  tearDown(() {
    reset(productRepositoryMock);
  });

  group('FetchProductsUsecase group => ', () {
    test('should return a product list on the right side', () async {
      when(productRepositoryMock.fetchProducts()).thenAnswer(
        (realInvocation) => Future.value(
          const Right(ProductFakeData.products),
        ),
      );

      final res = await fetchProductsUsecase(NoParams());

      expect(res.isRight(), true);

      res.fold(
        (l) => {},
        (r) => expect(r, ProductFakeData.products),
      );
    });

    test('should return a failure on the left side', () async {
      when(productRepositoryMock.fetchProducts()).thenAnswer(
        (realInvocation) => Future.value(
          Left(ServerFailure()),
        ),
      );

      final res = await fetchProductsUsecase(NoParams());

      expect(res.isLeft(), true);

      res.fold(
        (l) => expect(l, ServerFailure()),
        (r) => {},
      );
    });
  });
}
