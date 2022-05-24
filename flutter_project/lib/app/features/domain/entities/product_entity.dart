import 'package:equatable/equatable.dart';

class ProductEntity extends Equatable {
  final String title;
  final String type;
  final String description;
  final String filename;
  final int height;
  final int width;
  final double price;
  final int rating;

  const ProductEntity({
    required this.title,
    required this.type,
    required this.description,
    required this.filename,
    required this.height,
    required this.width,
    required this.price,
    required this.rating,
  });

  ProductEntity.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        type = json['type'],
        description = json['description'],
        filename = json['filename'],
        height = json['height'],
        width = json['width'],
        price = json['price'],
        rating = json['rating'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['title'] = title;
    data['type'] = type;
    data['description'] = description;
    data['filename'] = filename;
    data['height'] = height;
    data['width'] = width;
    data['price'] = price;
    data['rating'] = rating;

    return data;
  }

  @override
  String toString() => '''
  ProductEntity {
    title: $title;
    type: $type;
    description: $description;
    filename: $filename;
    height: $height;
    width: $width;
    price: $price;
    rating: $rating;
  }''';

  @override
  List<Object?> get props => [
        title,
        type,
        description,
        filename,
        height,
        width,
        price,
        rating,
      ];

  ProductEntity copyWith({
    String? title,
    String? type,
    String? description,
    String? filename,
    int? height,
    int? width,
    double? price,
    int? rating,
  }) {
    return ProductEntity(
      title: title ?? this.title,
      type: type ?? this.type,
      description: description ?? this.description,
      filename: filename ?? this.filename,
      height: height ?? this.height,
      width: width ?? this.width,
      price: price ?? this.price,
      rating: rating ?? this.rating,
    );
  }
}
