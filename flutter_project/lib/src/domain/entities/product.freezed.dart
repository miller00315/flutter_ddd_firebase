// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Product {
  UniqueId get id => throw _privateConstructorUsedError;
  ProductTitle get title => throw _privateConstructorUsedError;
  ProductType get type => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get filename => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  int get width => throw _privateConstructorUsedError;
  ProductPrice get price => throw _privateConstructorUsedError;
  int get rating => throw _privateConstructorUsedError;
  DateTime get created => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      ProductTitle title,
      ProductType type,
      String description,
      String filename,
      int height,
      int width,
      ProductPrice price,
      int rating,
      DateTime created});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res> implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  final Product _value;
  // ignore: unused_field
  final $Res Function(Product) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? type = freezed,
    Object? description = freezed,
    Object? filename = freezed,
    Object? height = freezed,
    Object? width = freezed,
    Object? price = freezed,
    Object? rating = freezed,
    Object? created = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as ProductTitle,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ProductType,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      filename: filename == freezed
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as ProductPrice,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$$_NoteCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$_NoteCopyWith(_$_Note value, $Res Function(_$_Note) then) =
      __$$_NoteCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      ProductTitle title,
      ProductType type,
      String description,
      String filename,
      int height,
      int width,
      ProductPrice price,
      int rating,
      DateTime created});
}

/// @nodoc
class __$$_NoteCopyWithImpl<$Res> extends _$ProductCopyWithImpl<$Res>
    implements _$$_NoteCopyWith<$Res> {
  __$$_NoteCopyWithImpl(_$_Note _value, $Res Function(_$_Note) _then)
      : super(_value, (v) => _then(v as _$_Note));

  @override
  _$_Note get _value => super._value as _$_Note;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? type = freezed,
    Object? description = freezed,
    Object? filename = freezed,
    Object? height = freezed,
    Object? width = freezed,
    Object? price = freezed,
    Object? rating = freezed,
    Object? created = freezed,
  }) {
    return _then(_$_Note(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as ProductTitle,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ProductType,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      filename: filename == freezed
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as ProductPrice,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_Note implements _Note {
  const _$_Note(
      {required this.id,
      required this.title,
      required this.type,
      required this.description,
      required this.filename,
      required this.height,
      required this.width,
      required this.price,
      required this.rating,
      required this.created});

  @override
  final UniqueId id;
  @override
  final ProductTitle title;
  @override
  final ProductType type;
  @override
  final String description;
  @override
  final String filename;
  @override
  final int height;
  @override
  final int width;
  @override
  final ProductPrice price;
  @override
  final int rating;
  @override
  final DateTime created;

  @override
  String toString() {
    return 'Product(id: $id, title: $title, type: $type, description: $description, filename: $filename, height: $height, width: $width, price: $price, rating: $rating, created: $created)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Note &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.filename, filename) &&
            const DeepCollectionEquality().equals(other.height, height) &&
            const DeepCollectionEquality().equals(other.width, width) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.rating, rating) &&
            const DeepCollectionEquality().equals(other.created, created));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(filename),
      const DeepCollectionEquality().hash(height),
      const DeepCollectionEquality().hash(width),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(rating),
      const DeepCollectionEquality().hash(created));

  @JsonKey(ignore: true)
  @override
  _$$_NoteCopyWith<_$_Note> get copyWith =>
      __$$_NoteCopyWithImpl<_$_Note>(this, _$identity);
}

abstract class _Note implements Product {
  const factory _Note(
      {required final UniqueId id,
      required final ProductTitle title,
      required final ProductType type,
      required final String description,
      required final String filename,
      required final int height,
      required final int width,
      required final ProductPrice price,
      required final int rating,
      required final DateTime created}) = _$_Note;

  @override
  UniqueId get id => throw _privateConstructorUsedError;
  @override
  ProductTitle get title => throw _privateConstructorUsedError;
  @override
  ProductType get type => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  String get filename => throw _privateConstructorUsedError;
  @override
  int get height => throw _privateConstructorUsedError;
  @override
  int get width => throw _privateConstructorUsedError;
  @override
  ProductPrice get price => throw _privateConstructorUsedError;
  @override
  int get rating => throw _privateConstructorUsedError;
  @override
  DateTime get created => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_NoteCopyWith<_$_Note> get copyWith => throw _privateConstructorUsedError;
}
