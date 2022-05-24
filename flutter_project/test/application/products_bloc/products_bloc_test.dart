import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_project/src/application/products_bloc/product_bloc.dart';
import 'package:flutter_project/src/domain/core/value_objects.dart';
import 'package:flutter_project/src/domain/entities/product_entity.dart';
import 'package:flutter_project/src/domain/entities/product_failures.dart';
import 'package:flutter_project/src/domain/repositories/i_product_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:uuid/uuid.dart';

import 'products_bloc_test.mocks.dart';

@GenerateMocks([IProductRepository])
main() {
  final productRepositoryMock = MockIProductRepository();

  final ProductEntity product = ProductEntity(
    id: UniqueId.fromUniqueString(const Uuid().v1().toString()),
    title: 'test',
    type: 'test',
    description: 'teste',
    filename: '0',
    height: 2,
    width: 2,
    price: 2,
    rating: 2,
  );

  group('ProductsBloc group =>', () {
    test('should start listen and receive the firsts data', () async {
      final controller =
          StreamController<Either<ProductFailure, List<ProductEntity>>>();

      controller.add(right([product]));

      when(productRepositoryMock.watchAll()).thenAnswer(
        (_) => controller.stream,
      );

      final productBloc = ProductBloc(productRepositoryMock);

      productBloc.add(const ProductEvent.startedWatchProducts());

      await expectLater(
        productBloc.stream,
        emitsInOrder(
          <ProductState>[
            const ProductState.loadInProgress(),
            ProductState.loadSuccess([product]),
          ],
        ),
      );

      expect(productBloc.state, ProductState.loadSuccess([product]));

      productBloc.close();

      controller.close();
    });

    test('should start listen and when receive error should ', () async {
      final controller =
          StreamController<Either<ProductFailure, List<ProductEntity>>>();

      controller.add(left(const ProductFailure.insufficientPermissions()));

      when(productRepositoryMock.watchAll()).thenAnswer(
        (_) => controller.stream,
      );

      final productBloc = ProductBloc(productRepositoryMock);

      productBloc.add(const ProductEvent.startedWatchProducts());

      await expectLater(
        productBloc.stream,
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
        productBloc.state,
        const ProductState.loadFailure(
          ProductFailure.insufficientPermissions(),
        ),
      );

      productBloc.close();

      controller.close();
    });
  });
}
