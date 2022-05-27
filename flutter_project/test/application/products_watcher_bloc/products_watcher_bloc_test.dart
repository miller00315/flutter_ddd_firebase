import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_project/src/application/product_watcher_bloc/product_watcher_bloc.dart';
import 'package:flutter_project/src/domain/core/value_objects.dart';
import 'package:flutter_project/src/domain/entities/product/product.dart';
import 'package:flutter_project/src/domain/entities/product/product_failures.dart';
import 'package:flutter_project/src/domain/entities/product/value_objects.dart';
import 'package:flutter_project/src/domain/repositories/i_product_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:uuid/uuid.dart';

import 'products_watcher_bloc_test.mocks.dart';

@GenerateMocks([IProductRepository])
main() {
  final productRepositoryMock = MockIProductRepository();

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

  group('ProductsBloc group =>', () {
    test('should start listen and receive the firsts data', () async {
      final controller =
          StreamController<Either<ProductFailure, List<Product>>>();

      controller.add(right([product]));

      when(productRepositoryMock.watchAll()).thenAnswer(
        (_) => controller.stream,
      );

      final productWatcherBloc = ProductWatcherBloc(productRepositoryMock);

      productWatcherBloc.add(const ProductWatcherEvent.startedWatchProducts());

      await expectLater(
        productWatcherBloc.stream,
        emitsInOrder(
          <ProductWatcherState>[
            const ProductWatcherState.loadInProgress(),
            ProductWatcherState.loadSuccess([product]),
          ],
        ),
      );

      expect(
        productWatcherBloc.state,
        ProductWatcherState.loadSuccess([product]),
      );

      productWatcherBloc.close();

      controller.close();
    });

    test('should start listen and when receive error should ', () async {
      final controller =
          StreamController<Either<ProductFailure, List<Product>>>();

      controller.add(left(const ProductFailure.insufficientPermissions()));

      when(productRepositoryMock.watchAll()).thenAnswer(
        (_) => controller.stream,
      );

      final productWatcherBloc = ProductWatcherBloc(productRepositoryMock);

      productWatcherBloc.add(const ProductWatcherEvent.startedWatchProducts());

      await expectLater(
        productWatcherBloc.stream,
        emitsInOrder(
          <ProductWatcherState>[
            const ProductWatcherState.loadInProgress(),
            const ProductWatcherState.loadFailure(
              ProductFailure.insufficientPermissions(),
            ),
          ],
        ),
      );

      expect(
        productWatcherBloc.state,
        const ProductWatcherState.loadFailure(
          ProductFailure.insufficientPermissions(),
        ),
      );

      productWatcherBloc.close();

      controller.close();
    });
  });
}
