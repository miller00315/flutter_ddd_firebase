import 'package:dartz/dartz.dart';
import 'package:flutter_project/src/domain/core/failures.dart';

///Aqui são feitas as validações dos campos necessários
///Devem retornar sempre a falha ou o valor de entrada

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input.isEmpty) {
    return left(ValueFailure.empty(failedValue: input));
  } else {
    return right(input);
  }
}

Either<ValueFailure<num>, num> validateNumber(num input) {
  if (input == 0) {
    return left(ValueFailure.invalidValue(failedValue: input));
  } else {
    return right(input);
  }
}
