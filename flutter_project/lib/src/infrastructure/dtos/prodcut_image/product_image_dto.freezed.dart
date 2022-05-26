// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_image_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductImageDto {
  String get url => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductImageDtoCopyWith<ProductImageDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductImageDtoCopyWith<$Res> {
  factory $ProductImageDtoCopyWith(
          ProductImageDto value, $Res Function(ProductImageDto) then) =
      _$ProductImageDtoCopyWithImpl<$Res>;
  $Res call({String url});
}

/// @nodoc
class _$ProductImageDtoCopyWithImpl<$Res>
    implements $ProductImageDtoCopyWith<$Res> {
  _$ProductImageDtoCopyWithImpl(this._value, this._then);

  final ProductImageDto _value;
  // ignore: unused_field
  final $Res Function(ProductImageDto) _then;

  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ProductImageDtoCopyWith<$Res>
    implements $ProductImageDtoCopyWith<$Res> {
  factory _$$_ProductImageDtoCopyWith(
          _$_ProductImageDto value, $Res Function(_$_ProductImageDto) then) =
      __$$_ProductImageDtoCopyWithImpl<$Res>;
  @override
  $Res call({String url});
}

/// @nodoc
class __$$_ProductImageDtoCopyWithImpl<$Res>
    extends _$ProductImageDtoCopyWithImpl<$Res>
    implements _$$_ProductImageDtoCopyWith<$Res> {
  __$$_ProductImageDtoCopyWithImpl(
      _$_ProductImageDto _value, $Res Function(_$_ProductImageDto) _then)
      : super(_value, (v) => _then(v as _$_ProductImageDto));

  @override
  _$_ProductImageDto get _value => super._value as _$_ProductImageDto;

  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_$_ProductImageDto(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ProductImageDto
    with DiagnosticableTreeMixin
    implements _ProductImageDto {
  _$_ProductImageDto({required this.url});

  @override
  final String url;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductImageDto(url: $url)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProductImageDto'))
      ..add(DiagnosticsProperty('url', url));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductImageDto &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$$_ProductImageDtoCopyWith<_$_ProductImageDto> get copyWith =>
      __$$_ProductImageDtoCopyWithImpl<_$_ProductImageDto>(this, _$identity);
}

abstract class _ProductImageDto implements ProductImageDto {
  factory _ProductImageDto({required final String url}) = _$_ProductImageDto;

  @override
  String get url => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ProductImageDtoCopyWith<_$_ProductImageDto> get copyWith =>
      throw _privateConstructorUsedError;
}
