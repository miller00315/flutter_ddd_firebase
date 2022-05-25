import 'package:flutter_project/src/domain/core/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_project/src/domain/core/value_objects.dart';
import 'package:flutter_project/src/domain/core/value_validators.dart';

class ProductTitle extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory ProductTitle(String input) {
    return ProductTitle._(validateStringNotEmpty(input));
  }

  const ProductTitle._(this.value);
}

class ProductType extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory ProductType(String input) {
    return ProductType._(validateStringNotEmpty(input));
  }

  const ProductType._(this.value);
}

class ProductPrice extends ValueObject<double> {
  @override
  final Either<ValueFailure<double>, double> value;

  factory ProductPrice(double input) {
    return ProductPrice._(validateNumberNotEmpty(input));
  }

  const ProductPrice._(this.value);
}
