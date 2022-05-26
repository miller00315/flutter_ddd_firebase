import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_failures.freezed.dart';

/// Estas são as falhas que pode ocorrer durante o tratamento do produto
@freezed
class ProductFailure {
  const factory ProductFailure.unexpected() = Unexpected;
  const factory ProductFailure.insufficientPermissions() =
      InsufficientPermissions;
  const factory ProductFailure.unableToUpdate() = UnableToUpdate;
  const factory ProductFailure.unableToDelete() = UnableToDelete;
}
