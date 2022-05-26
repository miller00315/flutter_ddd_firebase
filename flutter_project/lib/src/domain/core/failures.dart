import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

///Esta class mapeia os tipos de falhas que
///posteriormente serão retornadas pelo modelo
@freezed
class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.empty({
    required T failedValue,
  }) = Empty<T>;

  const factory ValueFailure.invalidValue({
    required T failedValue,
  }) = InvalidValue<T>;
}
