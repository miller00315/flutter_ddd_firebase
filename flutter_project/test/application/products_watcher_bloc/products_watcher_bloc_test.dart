import 'dart:async';

import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_project/src/application/product_watcher_bloc/product_watcher_bloc.dart';
import 'package:flutter_project/src/domain/entities/product/product.dart';
import 'package:flutter_project/src/domain/entities/product/product_failures.dart';
import 'package:flutter_project/src/domain/repositories/i_product_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../mocks/fake_data.dart';
import 'products_watcher_bloc_test.mocks.dart';

@GenerateMocks([IProductRepository])
main() {
  final productRepositoryMock = MockIProductRepository();

  StreamController<Either<ProductFailure, List<Product>>>? controller;

  group('ProductsBloc group =>', () {
    setUp(() {
      controller = StreamController<Either<ProductFailure, List<Product>>>();
    });

    tearDown(() {
      controller?.close();

      reset(productRepositoryMock);
    });

    blocTest<ProductWatcherBloc, ProductWatcherState>(
      'should request and emit state with products',
      build: () => ProductWatcherBloc(productRepositoryMock),
      setUp: () {
        controller!.add(right([fakeProduct]));

        when(productRepositoryMock.watchAll()).thenAnswer(
          (_) => controller!.stream,
        );
      },
      act: (bloc) => bloc.add(
        const ProductWatcherEvent.startedWatchProducts(),
      ),
      verify: (_) {
        verify(productRepositoryMock.watchAll()).called(1);
      },
      expect: () => [
        const ProductWatcherState.loadInProgress(),
        ProductWatcherState.loadSuccess([fakeProduct]),
      ],
    );

    blocTest<ProductWatcherBloc, ProductWatcherState>(
      'should request and emit state error with [ProductFailure.insufficientPermissions]',
      build: () => ProductWatcherBloc(productRepositoryMock),
      setUp: () {
        controller!.add(left(const ProductFailure.insufficientPermissions()));

        when(productRepositoryMock.watchAll()).thenAnswer(
          (_) => controller!.stream,
        );
      },
      act: (bloc) => bloc.add(
        const ProductWatcherEvent.startedWatchProducts(),
      ),
      verify: (_) {
        verify(productRepositoryMock.watchAll()).called(1);
      },
      expect: () => [
        const ProductWatcherState.loadInProgress(),
        const ProductWatcherState.loadFailure(
          ProductFailure.insufficientPermissions(),
        ),
      ],
    );

    blocTest<ProductWatcherBloc, ProductWatcherState>(
      'should request and emit state error with [ProductFailure.unexpected]',
      build: () => ProductWatcherBloc(productRepositoryMock),
      setUp: () {
        controller!.add(left(const ProductFailure.unexpected()));

        when(productRepositoryMock.watchAll()).thenAnswer(
          (_) => controller!.stream,
        );
      },
      act: (bloc) => bloc.add(
        const ProductWatcherEvent.startedWatchProducts(),
      ),
      verify: (_) {
        verify(productRepositoryMock.watchAll()).called(1);
      },
      expect: () => [
        const ProductWatcherState.loadInProgress(),
        const ProductWatcherState.loadFailure(
          ProductFailure.unexpected(),
        ),
      ],
    );
  });
}
