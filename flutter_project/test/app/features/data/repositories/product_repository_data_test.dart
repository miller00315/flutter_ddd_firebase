import 'package:flutter_project/app/core/error/failures.dart';
import 'package:flutter_project/app/features/data/data_sources/product_data_source.dart';
import 'package:flutter_project/app/features/data/repositories/product_repository_data.dart';
import 'package:flutter_project/mock/fake_data/products_fake_data.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'product_repository_data_test.mocks.dart';

@GenerateMocks([IProductDataSource])
main() {
  final productDataSource = MockIProductDataSource();

  final productRepository = ProductRepositoryData(productDataSource);

  tearDown(() {
    reset(productDataSource);
  });

  group('Product repository group => ', () {
    test(
        'should return a productEntityList on the right side when fetch products request success',
        () async {
      when(productDataSource.fetchProducts()).thenAnswer(
        (_) => Future.value(ProductFakeData.products),
      );

      final res = await productRepository.fetchProducts();

      verify(productDataSource.fetchProducts()).called(1);

      expect(res.isRight(), true);

      res.fold(
        (l) => expect(l, null),
        (r) => expect(r, ProductFakeData.products),
      );
    });

    test(
        'should return a ServerFailure on the left side when fetch products request fail',
        () async {
      when(productDataSource.fetchProducts()).thenThrow('request failed');

      final res = await productRepository.fetchProducts();

      verify(productDataSource.fetchProducts()).called(1);

      expect(res.isLeft(), true);

      res.fold(
        (l) => expect(l, ServerFailure()),
        (r) => expect(r, null),
      );
    });

    test('should return null on the right side when update product success',
        () async {
      when(productDataSource.updateProduct(ProductFakeData.products.first))
          .thenAnswer((realInvocation) => Future.value());

      final res =
          await productRepository.updateProduct(ProductFakeData.products.first);

      expect(res.isRight(), true);

      res.fold(
        (l) => expect(l, null),
        (r) => expect(r, null),
      );
    });

    test(
        'should return a ServerFailure on the left side when update product fail',
        () async {
      when(productDataSource.updateProduct(ProductFakeData.products.first))
          .thenThrow('request failed');

      final res =
          await productRepository.updateProduct(ProductFakeData.products.first);

      verify(productDataSource.updateProduct(ProductFakeData.products.first))
          .called(1);

      expect(res.isLeft(), true);

      res.fold(
        (l) => expect(l, ServerFailure()),
        (r) => expect(r, null),
      );
    });

    test('should return a null on the right side when delete product success',
        () async {
      when(productDataSource.deleteProduct(1))
          .thenAnswer((realInvocation) => Future.value());

      final res = await productRepository.deleteProduct(1);

      verify(productDataSource.deleteProduct(1)).called(1);

      expect(res.isRight(), true);

      res.fold(
        (l) => expect(l, null),
        (r) => expect(r, null),
      );
    });

    test(
        'should return a ServerError on the left side when delete product fail',
        () async {
      when(productDataSource.deleteProduct(1)).thenThrow('request failed');

      final res = await productRepository.deleteProduct(1);

      verify(productDataSource.deleteProduct(1)).called(1);

      expect(res.isLeft(), true);

      res.fold(
        (l) => expect(l, ServerFailure()),
        (r) => expect(r, null),
      );
    });
  });
}
