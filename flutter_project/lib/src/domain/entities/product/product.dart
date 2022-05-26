import 'package:dartz/dartz.dart';
import 'package:flutter_project/src/domain/core/entity.dart';
import 'package:flutter_project/src/domain/core/failures.dart';
import 'package:flutter_project/src/domain/core/value_objects.dart';
import 'package:flutter_project/src/domain/entities/product/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';

@freezed
class Product with _$Product implements IEntity {
  const factory Product({
    required UniqueId id,
    required ProductTitle title,
    required ProductType type,
    required String description,
    required String filename,
    required int height,
    required int width,
    required ProductPrice price,
    required int rating,
    required DateTime created,
  }) = _Product;
}

/// Esta extensão permite que o o producto se autovalide quando necessário
extension FailureVerifies on Product {
  Option<ValueFailure<dynamic>> get failureOption {
    return title.failureOrUnit
        .andThen(type.failureOrUnit)
        .andThen(price.failureOrUnit)
        .fold(
          (failure) => some(failure),
          (_) => none(),
        );
  }
}
