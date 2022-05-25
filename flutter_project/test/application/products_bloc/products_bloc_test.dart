/* import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_project/src/application/produt_watch_bloc/product_bloc.dart';
import 'package:flutter_project/src/domain/core/value_objects.dart';
import 'package:flutter_project/src/domain/entities/product_entity.dart';
import 'package:flutter_project/src/domain/entities/product_failures.dart';
import 'package:flutter_project/src/domain/entities/value_objects.dart';
import 'package:flutter_project/src/domain/repositories/i_product_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:uuid/uuid.dart';

import 'produt_watch_bloc_test.mocks.dart';

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

      final ProductWatcherBloc = ProductWatcherBloc(productRepositoryMock);

      ProductWatcherBloc.add(const ProductEvent.startedWatchProducts());

      await expectLater(
        ProductWatcherBloc.stream,
        emitsInOrder(
          <ProductState>[
            const ProductState.loadInProgress(),
            ProductState.loadSuccess([product]),
          ],
        ),
      );

      expect(ProductWatcherBloc.state, ProductState.loadSuccess([product]));

      ProductWatcherBloc.close();

      controller.close();
    });

    test('should start listen and when receive error should ', () async {
      final controller =
          StreamController<Either<ProductFailure, List<Product>>>();

      controller.add(left(const ProductFailure.insufficientPermissions()));

      when(productRepositoryMock.watchAll()).thenAnswer(
        (_) => controller.stream,
      );

      final ProductWatcherBloc = ProductWatcherBloc(productRepositoryMock);

      ProductWatcherBloc.add(const ProductEvent.startedWatchProducts());

      await expectLater(
        ProductWatcherBloc.stream,
        emitsInOrder(
          <ProductState>[
            const ProductState.loadInProgress(),
            const ProductState.loadFailure(
              ProductFailure.insufficientPermissions(),
            ),
          ],
        ),
      );

      expect(
        ProductWatcherBloc.state,
        const ProductState.loadFailure(
          ProductFailure.insufficientPermissions(),
        ),
      );

      ProductWatcherBloc.close();

      controller.close();
    });
  });
}
 */