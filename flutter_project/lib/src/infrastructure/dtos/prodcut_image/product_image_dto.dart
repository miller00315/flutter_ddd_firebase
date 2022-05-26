import 'dart:typed_data';

import 'package:flutter/foundation.dart';
import 'package:flutter_project/src/domain/entities/product_image/product_image.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_image_dto.freezed.dart';

@freezed
class ProductImageDto with _$ProductImageDto {
  factory ProductImageDto({
    required String url,
  }) = _ProductImageDto;

  factory ProductImageDto.fromDomain(ProductImage productImage) {
    return ProductImageDto(
      url: productImage.url,
    );
  }
}

extension ProductImageDtoMappers on ProductImageDto {
  ProductImage toDomain() => ProductImage(
        url: url,
      );
}
