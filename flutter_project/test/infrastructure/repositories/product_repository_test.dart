import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:flutter_project/src/domain/core/value_objects.dart';
import 'package:flutter_project/src/domain/entities/product/product.dart';
import 'package:flutter_project/src/domain/entities/product/product_failures.dart';
import 'package:flutter_project/src/domain/entities/product/value_objects.dart';
import 'package:flutter_project/src/infrastructure/data_sources/network/product/i_products_data_source.dart';
import 'package:flutter_project/src/infrastructure/dtos/product/product_dto.dart';
import 'package:flutter_project/src/infrastructure/repositories/product_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:uuid/uuid.dart';

import '../../mocks/fake_data.dart';
import 'product_repository_test.mocks.dart';

@GenerateMocks([IProductDataSource])
main() {
  final productDataSourceMock = MockIProductDataSource();

  final Product product = Product(
    id: UniqueId.fromUniqueString(const Uuid().v1().toString()),
    title: ProductTitle('test'),
    type: ProductType('test'),
    description: 'teste',
    filename: '0',
    height: 2,
    width: 2,
    price: ProductPrice(2),
    rating: 2,
    created: DateTime.now(),
  );

  final productDto = ProductDto.fromDomain(product);

  final productRepository = ProductRepository(productDataSourceMock);

  group('ProductRepository group =>', () {
    tearDown(() {
      reset(productDataSourceMock);
    });

    test(
        'should call [productDataSource.delete] and when delete Product success return a right with a unit',
        () async {
      when(productDataSourceMock.delete(productDto))
          .thenAnswer((_) => Future.value());

      final res = await productRepository.delete(product);

      verify(productDataSourceMock.delete(productDto)).called(1);

      res.fold(
        (l) => expect(l, null),
        (r) => expect(r, unit),
      );
    });

    test(
        'should call [productDataSource.delete] and when delete fail with PERMISSIONS_DENIED return on the left a [ProductFailure.insufficientPermissions]',
        () async {
      when(productDataSourceMock.delete(productDto)).thenThrow(
        PlatformException(
          code: '13',
          message: 'PERMISSION_DENIED',
        ),
      );

      final res = await productRepository.delete(product);

      verify(productDataSourceMock.delete(productDto)).called(1);

      res.fold(
        (l) => expect(l, const ProductFailure.insufficientPermissions()),
        (r) => expect(r, null),
      );
    });

    test(
        'should call [productDataSource.delete] and when delete fail with unknown error return on the left a [ProductFailure.unexpected]',
        () async {
      when(productDataSourceMock.delete(productDto)).thenThrow(
        PlatformException(
          code: '500',
          message: 'UNKNOWN',
        ),
      );

      final res = await productRepository.delete(product);

      verify(productDataSourceMock.delete(productDto)).called(1);

      res.fold(
        (l) => expect(l, const ProductFailure.unexpected()),
        (r) => expect(r, null),
      );
    });

    test(
        'should call [productDataSource.update] and when update Product success return a right with a unit',
        () async {
      when(productDataSourceMock.update(productDto))
          .thenAnswer((_) => Future.value());

      final res = await productRepository.update(product);

      verify(productDataSourceMock.update(productDto)).called(1);

      res.fold(
        (l) => expect(l, null),
        (r) => expect(r, unit),
      );
    });

    test(
        'should call [productDataSource.update] and when fail with PERMISSIONS_DENIED return on the left a [ProductFailure.insufficientPermissions]',
        () async {
      when(productDataSourceMock.update(productDto)).thenThrow(
        PlatformException(
          code: '13',
          message: 'PERMISSION_DENIED',
        ),
      );

      final res = await productRepository.update(product);

      verify(productDataSourceMock.update(productDto)).called(1);

      res.fold(
        (l) => expect(l, const ProductFailure.insufficientPermissions()),
        (r) => expect(r, null),
      );
    });

    test(
        'should call [productDataSource.update] and when update fail with PERMISSIONS_DENIED return on the left a [ProductFailure.unableToUpdate]',
        () async {
      when(productDataSourceMock.update(productDto)).thenThrow(
        PlatformException(
          code: '404',
          message: 'NOT_FOUND',
        ),
      );

      final res = await productRepository.update(product);

      verify(productDataSourceMock.update(productDto)).called(1);

      res.fold(
        (l) => expect(l, const ProductFailure.unableToUpdate()),
        (r) => expect(r, null),
      );
    });

    test(
        'should call [productDataSource.update] and when update fail with unknown error return on the left a [ProductFailure.unexpected]',
        () async {
      when(productDataSourceMock.update(productDto)).thenThrow(
        PlatformException(
          code: '500',
          message: 'UNKNOWN',
        ),
      );

      final res = await productRepository.update(product);

      verify(productDataSourceMock.update(productDto)).called(1);

      res.fold(
        (l) => expect(l, const ProductFailure.unexpected()),
        (r) => expect(r, null),
      );
    });

    test('should listen a stream of ProductoDto and map to a stream of Product',
        () {
      final controller = StreamController<List<ProductDto>>();

      when(productDataSourceMock.watchAll()).thenAnswer(
        (_) => controller.stream,
      );

      final listener = productRepository.watchAll().listen((event) {
        expect(event.isRight(), true);

        event.fold(
          (l) => expect(l, null),
          (r) => expect(r, [product]),
        );
      });

      controller.sink.add([fakeProductDto]);

      listener.cancel();

      controller.close();
    });

    test(
        'should list a stram and when return a PERMISSION_DENIED failure should listen on a left with ProductFailure.insufficientPermissions',
        () {
      final controller = StreamController<List<ProductDto>>();

      when(productDataSourceMock.watchAll()).thenAnswer(
        (_) => controller.stream,
      );

      expect(
        productRepository.watchAll(),
        emitsInOrder(
          [const Left(ProductFailure.insufficientPermissions())],
        ),
      );

      controller.sink.addError(PlatformException(
        code: '13',
        message: 'PERMISSION_DENIED',
      ));

      controller.close();
    });

    test(
        'should list a stream and when return a unknown failure should listen on a left with ProductFailure.unexpected',
        () {
      final controller = StreamController<List<ProductDto>>();

      when(productDataSourceMock.watchAll()).thenAnswer(
        (_) => controller.stream,
      );

      expect(
        productRepository.watchAll(),
        emitsInOrder(
          [const Left(ProductFailure.unexpected())],
        ),
      );

      controller.sink.addError(PlatformException(
        code: '500',
        message: 'UNKNOWN',
      ));

      controller.close();
    });
  });
}
