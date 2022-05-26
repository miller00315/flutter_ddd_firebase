import 'package:flutter_project/src/domain/core/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_project/src/domain/core/value_objects.dart';
import 'package:flutter_project/src/domain/core/value_validators.dart';

///Estas são classes que verificam os valores de entrada
///quando são inválidos os erros são registrado
///para que classe que os utilizem possa verificar quando necessário

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
    return ProductPrice._(validateNumber(input));
  }

  const ProductPrice._(this.value);
}
