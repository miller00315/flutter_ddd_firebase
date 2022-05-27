// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductDto _$$_ProductDtoFromJson(Map<String, dynamic> json) =>
    _$_ProductDto(
      title: json['title'] as String,
      type: json['type'] as String,
      description: json['description'] as String?,
      filename: json['filename'] as String?,
      height: json['height'] as int?,
      width: json['width'] as int?,
      price: (json['price'] as num).toDouble(),
      rating: json['rating'] as int?,
    );

Map<String, dynamic> _$$_ProductDtoToJson(_$_ProductDto instance) =>
    <String, dynamic>{
      'title': instance.title,
      'type': instance.type,
      'description': instance.description,
      'filename': instance.filename,
      'height': instance.height,
      'width': instance.width,
      'price': instance.price,
      'rating': instance.rating,
    };
