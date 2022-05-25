import 'package:dartz/dartz.dart';
import 'package:flutter_project/src/domain/core/failures.dart';

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input.isEmpty) {
    return left(ValueFailure.empty(failedValue: input));
  } else {
    return right(input);
  }
}

Either<ValueFailure<double>, double> validateNumberNotEmpty(double input) {
  if (input == 0) {
    return left(ValueFailure.empty(failedValue: input));
  } else {
    return right(input);
  }
}
