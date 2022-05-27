import 'package:flutter_project/src/domain/core/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_project/src/domain/core/value_objects.dart';
import 'package:flutter_project/src/domain/core/value_validators.dart';
import 'package:intl/intl.dart';

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

class ProductPrice extends ValueObject<num> {
  @override
  final Either<ValueFailure<num>, num> value;

  factory ProductPrice(num input) {
    return ProductPrice._(validateNumber(input));
  }

  const ProductPrice._(this.value);
}

extension ProductPriceX on ProductPrice {
  String getCurrencyString() {
    return NumberFormat.simpleCurrency(locale: 'pt_BR').format(getOrElse(0));
  }
}
