import 'package:flutter_project/src/domain/core/entity.dart';
import 'package:flutter_project/src/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_entity.freezed.dart';

@freezed
class ProductEntity with _$ProductEntity implements IEntity {
  const factory ProductEntity({
    required UniqueId id,
    required String title,
    required String type,
    required String description,
    required String filename,
    required int height,
    required int width,
    required double price,
    required int rating,
  }) = _Note;
}
