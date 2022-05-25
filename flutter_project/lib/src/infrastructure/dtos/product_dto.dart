import 'package:flutter_project/src/domain/core/value_objects.dart';
import 'package:flutter_project/src/domain/entities/product_entity.dart';
import 'package:flutter_project/src/infrastructure/data_sources/products_data_source.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_dto.freezed.dart';
part 'product_dto.g.dart';

@freezed
class ProductDto with _$ProductDto {
  factory ProductDto({
    @JsonKey(ignore: true) String? id,
    required String title,
    required String type,
    required String description,
    required String filename,
    required int height,
    required int width,
    required double price,
    required int rating,
  }) = _ProductDto;

  factory ProductDto.fromDomain(ProductEntity product) {
    return ProductDto(
      id: product.id.getOrCrash(),
      description: product.description,
      filename: product.filename,
      height: product.height,
      price: product.price,
      rating: product.rating,
      title: product.title,
      type: product.type,
      width: product.width,
    );
  }

  factory ProductDto.fromJson(Map<String, dynamic> json) =>
      _$ProductDtoFromJson(json);

  factory ProductDto.fromFirestore(QueryDocumentSnapshot doc) {
    return ProductDto.fromJson(doc.data() as Map<String, dynamic>)
        .copyWith(id: doc.id);
  }
}

extension ProductDtoConverters on ProductDto {
  ProductEntity toDomain() {
    return ProductEntity(
      id: UniqueId.fromUniqueString(id!),
      title: title,
      type: type,
      description: description,
      filename: filename,
      height: height,
      width: width,
      price: price,
      rating: rating,
    );
  }
}
