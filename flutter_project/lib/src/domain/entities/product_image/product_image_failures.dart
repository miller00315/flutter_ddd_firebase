import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_image_failures.freezed.dart';

/// Estas são as falhas que pode ocorrer durante o tratamento da imagem
@freezed
class ProductImageFailure {
  const factory ProductImageFailure.unexpected() = Unexpected;
  const factory ProductImageFailure.insufficientPermissions() =
      InsufficientPermissions;
  const factory ProductImageFailure.unableToFetch() = UnableToFetch;
}
