// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductImage {
  File get file => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductImageCopyWith<ProductImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductImageCopyWith<$Res> {
  factory $ProductImageCopyWith(
          ProductImage value, $Res Function(ProductImage) then) =
      _$ProductImageCopyWithImpl<$Res>;
  $Res call({File file});
}

/// @nodoc
class _$ProductImageCopyWithImpl<$Res> implements $ProductImageCopyWith<$Res> {
  _$ProductImageCopyWithImpl(this._value, this._then);

  final ProductImage _value;
  // ignore: unused_field
  final $Res Function(ProductImage) _then;

  @override
  $Res call({
    Object? file = freezed,
  }) {
    return _then(_value.copyWith(
      file: file == freezed
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc
abstract class _$$_ProductImageCopyWith<$Res>
    implements $ProductImageCopyWith<$Res> {
  factory _$$_ProductImageCopyWith(
          _$_ProductImage value, $Res Function(_$_ProductImage) then) =
      __$$_ProductImageCopyWithImpl<$Res>;
  @override
  $Res call({File file});
}

/// @nodoc
class __$$_ProductImageCopyWithImpl<$Res>
    extends _$ProductImageCopyWithImpl<$Res>
    implements _$$_ProductImageCopyWith<$Res> {
  __$$_ProductImageCopyWithImpl(
      _$_ProductImage _value, $Res Function(_$_ProductImage) _then)
      : super(_value, (v) => _then(v as _$_ProductImage));

  @override
  _$_ProductImage get _value => super._value as _$_ProductImage;

  @override
  $Res call({
    Object? file = freezed,
  }) {
    return _then(_$_ProductImage(
      file: file == freezed
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$_ProductImage implements _ProductImage {
  const _$_ProductImage({required this.file});

  @override
  final File file;

  @override
  String toString() {
    return 'ProductImage(file: $file)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductImage &&
            const DeepCollectionEquality().equals(other.file, file));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(file));

  @JsonKey(ignore: true)
  @override
  _$$_ProductImageCopyWith<_$_ProductImage> get copyWith =>
      __$$_ProductImageCopyWithImpl<_$_ProductImage>(this, _$identity);
}

abstract class _ProductImage implements ProductImage {
  const factory _ProductImage({required final File file}) = _$_ProductImage;

  @override
  File get file => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ProductImageCopyWith<_$_ProductImage> get copyWith =>
      throw _privateConstructorUsedError;
}
