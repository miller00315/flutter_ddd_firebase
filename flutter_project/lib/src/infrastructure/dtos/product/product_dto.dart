import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_project/src/domain/core/value_objects.dart';
import 'package:flutter_project/src/domain/entities/product/product.dart';
import 'package:flutter_project/src/domain/entities/product/value_objects.dart';
import 'package:flutter_project/src/infrastructure/data_sources/network/products_data_source.dart';
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
    @JsonKey(ignore: true) DateTime? created,
  }) = _ProductDto;

  factory ProductDto.fromDomain(Product product) {
    return ProductDto(
      id: product.id.getOrCrash(),
      description: product.description,
      filename: product.filename,
      height: product.height,
      price: product.price.getOrCrash(),
      rating: product.rating,
      title: product.title.getOrCrash(),
      type: product.type.getOrCrash(),
      width: product.width,
    );
  }

  factory ProductDto.fromJson(Map<String, dynamic> json) =>
      _$ProductDtoFromJson(json);

  factory ProductDto.fromFirestore(QueryDocumentSnapshot doc) {
    final docMap = doc.data() as Map<String, dynamic>;

    Timestamp timestamp = docMap['created'];

    return ProductDto.fromJson(docMap).copyWith(
      id: doc.id,
      created: timestamp.toDate(),
    );
  }
}

extension ProductDtoConverters on ProductDto {
  Product toDomain() {
    return Product(
      id: UniqueId.fromUniqueString(id!),
      title: ProductTitle(title),
      type: ProductType(type),
      description: description,
      filename: filename,
      height: height,
      width: width,
      price: ProductPrice(price),
      rating: rating,
      created: created!,
    );
  }
}
