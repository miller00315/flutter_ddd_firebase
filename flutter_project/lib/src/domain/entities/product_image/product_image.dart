import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_image.freezed.dart';

@freezed
class ProductImage with _$ProductImage {
  const factory ProductImage({required String url}) = _ProductImage;
}
