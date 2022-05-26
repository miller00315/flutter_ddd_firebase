// Mocks generated by Mockito 5.2.0 from annotations
// in flutter_project/test/application/products_bloc/products_bloc_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;

import 'package:dartz/dartz.dart' as _i2;
import 'package:flutter_project/src/domain/entities/product/product.dart'
    as _i6;
import 'package:flutter_project/src/domain/entities/product/product_failures.dart'
    as _i5;
import 'package:flutter_project/src/domain/repositories/i_product_repository.dart'
    as _i3;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeEither_0<L, R> extends _i1.Fake implements _i2.Either<L, R> {}

/// A class which mocks [IProductRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockIProductRepository extends _i1.Mock
    implements _i3.IProductRepository {
  MockIProductRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Stream<_i2.Either<_i5.ProductFailure, List<_i6.Product>>> watchAll() =>
      (super.noSuchMethod(Invocation.method(#watchAll, []),
              returnValue: Stream<
                  _i2.Either<_i5.ProductFailure, List<_i6.Product>>>.empty())
          as _i4.Stream<_i2.Either<_i5.ProductFailure, List<_i6.Product>>>);
  @override
  _i4.Future<_i2.Either<_i5.ProductFailure, _i2.Unit>> update(
          _i6.Product? product) =>
      (super.noSuchMethod(Invocation.method(#update, [product]),
          returnValue: Future<_i2.Either<_i5.ProductFailure, _i2.Unit>>.value(
              _FakeEither_0<_i5.ProductFailure, _i2.Unit>())) as _i4
          .Future<_i2.Either<_i5.ProductFailure, _i2.Unit>>);
  @override
  _i4.Future<_i2.Either<_i5.ProductFailure, _i2.Unit>> delete(
          _i6.Product? product) =>
      (super.noSuchMethod(Invocation.method(#delete, [product]),
          returnValue: Future<_i2.Either<_i5.ProductFailure, _i2.Unit>>.value(
              _FakeEither_0<_i5.ProductFailure, _i2.Unit>())) as _i4
          .Future<_i2.Either<_i5.ProductFailure, _i2.Unit>>);
}
