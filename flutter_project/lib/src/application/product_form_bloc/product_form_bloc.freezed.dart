// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<ProductEntity> initialProduct) initialize,
    required TResult Function(String title) titleChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(String type) typeChanged,
    required TResult Function(double price) priceChanged,
    required TResult Function(int rating) ratingChanged,
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<ProductEntity> initialProduct)? initialize,
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(String type)? typeChanged,
    TResult Function(double price)? priceChanged,
    TResult Function(int rating)? ratingChanged,
    TResult Function()? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<ProductEntity> initialProduct)? initialize,
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(String type)? typeChanged,
    TResult Function(double price)? priceChanged,
    TResult Function(int rating)? ratingChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_TypeChanged value) typeChanged,
    required TResult Function(_PriceChanged value) priceChanged,
    required TResult Function(_RatingChanged value) ratingChanged,
    required TResult Function(_Saved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_TypeChanged value)? typeChanged,
    TResult Function(_PriceChanged value)? priceChanged,
    TResult Function(_RatingChanged value)? ratingChanged,
    TResult Function(_Saved value)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_TypeChanged value)? typeChanged,
    TResult Function(_PriceChanged value)? priceChanged,
    TResult Function(_RatingChanged value)? ratingChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductFormEventCopyWith<$Res> {
  factory $ProductFormEventCopyWith(
          ProductFormEvent value, $Res Function(ProductFormEvent) then) =
      _$ProductFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProductFormEventCopyWithImpl<$Res>
    implements $ProductFormEventCopyWith<$Res> {
  _$ProductFormEventCopyWithImpl(this._value, this._then);

  final ProductFormEvent _value;
  // ignore: unused_field
  final $Res Function(ProductFormEvent) _then;
}

/// @nodoc
abstract class _$$_InitializeCopyWith<$Res> {
  factory _$$_InitializeCopyWith(
          _$_Initialize value, $Res Function(_$_Initialize) then) =
      __$$_InitializeCopyWithImpl<$Res>;
  $Res call({Option<ProductEntity> initialProduct});
}

/// @nodoc
class __$$_InitializeCopyWithImpl<$Res>
    extends _$ProductFormEventCopyWithImpl<$Res>
    implements _$$_InitializeCopyWith<$Res> {
  __$$_InitializeCopyWithImpl(
      _$_Initialize _value, $Res Function(_$_Initialize) _then)
      : super(_value, (v) => _then(v as _$_Initialize));

  @override
  _$_Initialize get _value => super._value as _$_Initialize;

  @override
  $Res call({
    Object? initialProduct = freezed,
  }) {
    return _then(_$_Initialize(
      initialProduct == freezed
          ? _value.initialProduct
          : initialProduct // ignore: cast_nullable_to_non_nullable
              as Option<ProductEntity>,
    ));
  }
}

/// @nodoc

class _$_Initialize implements _Initialize {
  const _$_Initialize(this.initialProduct);

  @override
  final Option<ProductEntity> initialProduct;

  @override
  String toString() {
    return 'ProductFormEvent.initialize(initialProduct: $initialProduct)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initialize &&
            const DeepCollectionEquality()
                .equals(other.initialProduct, initialProduct));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(initialProduct));

  @JsonKey(ignore: true)
  @override
  _$$_InitializeCopyWith<_$_Initialize> get copyWith =>
      __$$_InitializeCopyWithImpl<_$_Initialize>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<ProductEntity> initialProduct) initialize,
    required TResult Function(String title) titleChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(String type) typeChanged,
    required TResult Function(double price) priceChanged,
    required TResult Function(int rating) ratingChanged,
    required TResult Function() saved,
  }) {
    return initialize(initialProduct);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<ProductEntity> initialProduct)? initialize,
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(String type)? typeChanged,
    TResult Function(double price)? priceChanged,
    TResult Function(int rating)? ratingChanged,
    TResult Function()? saved,
  }) {
    return initialize?.call(initialProduct);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<ProductEntity> initialProduct)? initialize,
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(String type)? typeChanged,
    TResult Function(double price)? priceChanged,
    TResult Function(int rating)? ratingChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(initialProduct);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_TypeChanged value) typeChanged,
    required TResult Function(_PriceChanged value) priceChanged,
    required TResult Function(_RatingChanged value) ratingChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_TypeChanged value)? typeChanged,
    TResult Function(_PriceChanged value)? priceChanged,
    TResult Function(_RatingChanged value)? ratingChanged,
    TResult Function(_Saved value)? saved,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_TypeChanged value)? typeChanged,
    TResult Function(_PriceChanged value)? priceChanged,
    TResult Function(_RatingChanged value)? ratingChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class _Initialize implements ProductFormEvent {
  const factory _Initialize(final Option<ProductEntity> initialProduct) =
      _$_Initialize;

  Option<ProductEntity> get initialProduct =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_InitializeCopyWith<_$_Initialize> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TitleChangedCopyWith<$Res> {
  factory _$$_TitleChangedCopyWith(
          _$_TitleChanged value, $Res Function(_$_TitleChanged) then) =
      __$$_TitleChangedCopyWithImpl<$Res>;
  $Res call({String title});
}

/// @nodoc
class __$$_TitleChangedCopyWithImpl<$Res>
    extends _$ProductFormEventCopyWithImpl<$Res>
    implements _$$_TitleChangedCopyWith<$Res> {
  __$$_TitleChangedCopyWithImpl(
      _$_TitleChanged _value, $Res Function(_$_TitleChanged) _then)
      : super(_value, (v) => _then(v as _$_TitleChanged));

  @override
  _$_TitleChanged get _value => super._value as _$_TitleChanged;

  @override
  $Res call({
    Object? title = freezed,
  }) {
    return _then(_$_TitleChanged(
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TitleChanged implements _TitleChanged {
  const _$_TitleChanged(this.title);

  @override
  final String title;

  @override
  String toString() {
    return 'ProductFormEvent.titleChanged(title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TitleChanged &&
            const DeepCollectionEquality().equals(other.title, title));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(title));

  @JsonKey(ignore: true)
  @override
  _$$_TitleChangedCopyWith<_$_TitleChanged> get copyWith =>
      __$$_TitleChangedCopyWithImpl<_$_TitleChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<ProductEntity> initialProduct) initialize,
    required TResult Function(String title) titleChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(String type) typeChanged,
    required TResult Function(double price) priceChanged,
    required TResult Function(int rating) ratingChanged,
    required TResult Function() saved,
  }) {
    return titleChanged(title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<ProductEntity> initialProduct)? initialize,
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(String type)? typeChanged,
    TResult Function(double price)? priceChanged,
    TResult Function(int rating)? ratingChanged,
    TResult Function()? saved,
  }) {
    return titleChanged?.call(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<ProductEntity> initialProduct)? initialize,
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(String type)? typeChanged,
    TResult Function(double price)? priceChanged,
    TResult Function(int rating)? ratingChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (titleChanged != null) {
      return titleChanged(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_TypeChanged value) typeChanged,
    required TResult Function(_PriceChanged value) priceChanged,
    required TResult Function(_RatingChanged value) ratingChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return titleChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_TypeChanged value)? typeChanged,
    TResult Function(_PriceChanged value)? priceChanged,
    TResult Function(_RatingChanged value)? ratingChanged,
    TResult Function(_Saved value)? saved,
  }) {
    return titleChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_TypeChanged value)? typeChanged,
    TResult Function(_PriceChanged value)? priceChanged,
    TResult Function(_RatingChanged value)? ratingChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (titleChanged != null) {
      return titleChanged(this);
    }
    return orElse();
  }
}

abstract class _TitleChanged implements ProductFormEvent {
  const factory _TitleChanged(final String title) = _$_TitleChanged;

  String get title => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_TitleChangedCopyWith<_$_TitleChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DescriptionChangedCopyWith<$Res> {
  factory _$$_DescriptionChangedCopyWith(_$_DescriptionChanged value,
          $Res Function(_$_DescriptionChanged) then) =
      __$$_DescriptionChangedCopyWithImpl<$Res>;
  $Res call({String description});
}

/// @nodoc
class __$$_DescriptionChangedCopyWithImpl<$Res>
    extends _$ProductFormEventCopyWithImpl<$Res>
    implements _$$_DescriptionChangedCopyWith<$Res> {
  __$$_DescriptionChangedCopyWithImpl(
      _$_DescriptionChanged _value, $Res Function(_$_DescriptionChanged) _then)
      : super(_value, (v) => _then(v as _$_DescriptionChanged));

  @override
  _$_DescriptionChanged get _value => super._value as _$_DescriptionChanged;

  @override
  $Res call({
    Object? description = freezed,
  }) {
    return _then(_$_DescriptionChanged(
      description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DescriptionChanged implements _DescriptionChanged {
  const _$_DescriptionChanged(this.description);

  @override
  final String description;

  @override
  String toString() {
    return 'ProductFormEvent.descriptionChanged(description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DescriptionChanged &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$$_DescriptionChangedCopyWith<_$_DescriptionChanged> get copyWith =>
      __$$_DescriptionChangedCopyWithImpl<_$_DescriptionChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<ProductEntity> initialProduct) initialize,
    required TResult Function(String title) titleChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(String type) typeChanged,
    required TResult Function(double price) priceChanged,
    required TResult Function(int rating) ratingChanged,
    required TResult Function() saved,
  }) {
    return descriptionChanged(description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<ProductEntity> initialProduct)? initialize,
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(String type)? typeChanged,
    TResult Function(double price)? priceChanged,
    TResult Function(int rating)? ratingChanged,
    TResult Function()? saved,
  }) {
    return descriptionChanged?.call(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<ProductEntity> initialProduct)? initialize,
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(String type)? typeChanged,
    TResult Function(double price)? priceChanged,
    TResult Function(int rating)? ratingChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (descriptionChanged != null) {
      return descriptionChanged(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_TypeChanged value) typeChanged,
    required TResult Function(_PriceChanged value) priceChanged,
    required TResult Function(_RatingChanged value) ratingChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return descriptionChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_TypeChanged value)? typeChanged,
    TResult Function(_PriceChanged value)? priceChanged,
    TResult Function(_RatingChanged value)? ratingChanged,
    TResult Function(_Saved value)? saved,
  }) {
    return descriptionChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_TypeChanged value)? typeChanged,
    TResult Function(_PriceChanged value)? priceChanged,
    TResult Function(_RatingChanged value)? ratingChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (descriptionChanged != null) {
      return descriptionChanged(this);
    }
    return orElse();
  }
}

abstract class _DescriptionChanged implements ProductFormEvent {
  const factory _DescriptionChanged(final String description) =
      _$_DescriptionChanged;

  String get description => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_DescriptionChangedCopyWith<_$_DescriptionChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TypeChangedCopyWith<$Res> {
  factory _$$_TypeChangedCopyWith(
          _$_TypeChanged value, $Res Function(_$_TypeChanged) then) =
      __$$_TypeChangedCopyWithImpl<$Res>;
  $Res call({String type});
}

/// @nodoc
class __$$_TypeChangedCopyWithImpl<$Res>
    extends _$ProductFormEventCopyWithImpl<$Res>
    implements _$$_TypeChangedCopyWith<$Res> {
  __$$_TypeChangedCopyWithImpl(
      _$_TypeChanged _value, $Res Function(_$_TypeChanged) _then)
      : super(_value, (v) => _then(v as _$_TypeChanged));

  @override
  _$_TypeChanged get _value => super._value as _$_TypeChanged;

  @override
  $Res call({
    Object? type = freezed,
  }) {
    return _then(_$_TypeChanged(
      type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TypeChanged implements _TypeChanged {
  const _$_TypeChanged(this.type);

  @override
  final String type;

  @override
  String toString() {
    return 'ProductFormEvent.typeChanged(type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TypeChanged &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(type));

  @JsonKey(ignore: true)
  @override
  _$$_TypeChangedCopyWith<_$_TypeChanged> get copyWith =>
      __$$_TypeChangedCopyWithImpl<_$_TypeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<ProductEntity> initialProduct) initialize,
    required TResult Function(String title) titleChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(String type) typeChanged,
    required TResult Function(double price) priceChanged,
    required TResult Function(int rating) ratingChanged,
    required TResult Function() saved,
  }) {
    return typeChanged(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<ProductEntity> initialProduct)? initialize,
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(String type)? typeChanged,
    TResult Function(double price)? priceChanged,
    TResult Function(int rating)? ratingChanged,
    TResult Function()? saved,
  }) {
    return typeChanged?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<ProductEntity> initialProduct)? initialize,
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(String type)? typeChanged,
    TResult Function(double price)? priceChanged,
    TResult Function(int rating)? ratingChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (typeChanged != null) {
      return typeChanged(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_TypeChanged value) typeChanged,
    required TResult Function(_PriceChanged value) priceChanged,
    required TResult Function(_RatingChanged value) ratingChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return typeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_TypeChanged value)? typeChanged,
    TResult Function(_PriceChanged value)? priceChanged,
    TResult Function(_RatingChanged value)? ratingChanged,
    TResult Function(_Saved value)? saved,
  }) {
    return typeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_TypeChanged value)? typeChanged,
    TResult Function(_PriceChanged value)? priceChanged,
    TResult Function(_RatingChanged value)? ratingChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (typeChanged != null) {
      return typeChanged(this);
    }
    return orElse();
  }
}

abstract class _TypeChanged implements ProductFormEvent {
  const factory _TypeChanged(final String type) = _$_TypeChanged;

  String get type => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_TypeChangedCopyWith<_$_TypeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PriceChangedCopyWith<$Res> {
  factory _$$_PriceChangedCopyWith(
          _$_PriceChanged value, $Res Function(_$_PriceChanged) then) =
      __$$_PriceChangedCopyWithImpl<$Res>;
  $Res call({double price});
}

/// @nodoc
class __$$_PriceChangedCopyWithImpl<$Res>
    extends _$ProductFormEventCopyWithImpl<$Res>
    implements _$$_PriceChangedCopyWith<$Res> {
  __$$_PriceChangedCopyWithImpl(
      _$_PriceChanged _value, $Res Function(_$_PriceChanged) _then)
      : super(_value, (v) => _then(v as _$_PriceChanged));

  @override
  _$_PriceChanged get _value => super._value as _$_PriceChanged;

  @override
  $Res call({
    Object? price = freezed,
  }) {
    return _then(_$_PriceChanged(
      price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_PriceChanged implements _PriceChanged {
  const _$_PriceChanged(this.price);

  @override
  final double price;

  @override
  String toString() {
    return 'ProductFormEvent.priceChanged(price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PriceChanged &&
            const DeepCollectionEquality().equals(other.price, price));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(price));

  @JsonKey(ignore: true)
  @override
  _$$_PriceChangedCopyWith<_$_PriceChanged> get copyWith =>
      __$$_PriceChangedCopyWithImpl<_$_PriceChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<ProductEntity> initialProduct) initialize,
    required TResult Function(String title) titleChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(String type) typeChanged,
    required TResult Function(double price) priceChanged,
    required TResult Function(int rating) ratingChanged,
    required TResult Function() saved,
  }) {
    return priceChanged(price);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<ProductEntity> initialProduct)? initialize,
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(String type)? typeChanged,
    TResult Function(double price)? priceChanged,
    TResult Function(int rating)? ratingChanged,
    TResult Function()? saved,
  }) {
    return priceChanged?.call(price);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<ProductEntity> initialProduct)? initialize,
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(String type)? typeChanged,
    TResult Function(double price)? priceChanged,
    TResult Function(int rating)? ratingChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (priceChanged != null) {
      return priceChanged(price);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_TypeChanged value) typeChanged,
    required TResult Function(_PriceChanged value) priceChanged,
    required TResult Function(_RatingChanged value) ratingChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return priceChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_TypeChanged value)? typeChanged,
    TResult Function(_PriceChanged value)? priceChanged,
    TResult Function(_RatingChanged value)? ratingChanged,
    TResult Function(_Saved value)? saved,
  }) {
    return priceChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_TypeChanged value)? typeChanged,
    TResult Function(_PriceChanged value)? priceChanged,
    TResult Function(_RatingChanged value)? ratingChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (priceChanged != null) {
      return priceChanged(this);
    }
    return orElse();
  }
}

abstract class _PriceChanged implements ProductFormEvent {
  const factory _PriceChanged(final double price) = _$_PriceChanged;

  double get price => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_PriceChangedCopyWith<_$_PriceChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RatingChangedCopyWith<$Res> {
  factory _$$_RatingChangedCopyWith(
          _$_RatingChanged value, $Res Function(_$_RatingChanged) then) =
      __$$_RatingChangedCopyWithImpl<$Res>;
  $Res call({int rating});
}

/// @nodoc
class __$$_RatingChangedCopyWithImpl<$Res>
    extends _$ProductFormEventCopyWithImpl<$Res>
    implements _$$_RatingChangedCopyWith<$Res> {
  __$$_RatingChangedCopyWithImpl(
      _$_RatingChanged _value, $Res Function(_$_RatingChanged) _then)
      : super(_value, (v) => _then(v as _$_RatingChanged));

  @override
  _$_RatingChanged get _value => super._value as _$_RatingChanged;

  @override
  $Res call({
    Object? rating = freezed,
  }) {
    return _then(_$_RatingChanged(
      rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_RatingChanged implements _RatingChanged {
  const _$_RatingChanged(this.rating);

  @override
  final int rating;

  @override
  String toString() {
    return 'ProductFormEvent.ratingChanged(rating: $rating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RatingChanged &&
            const DeepCollectionEquality().equals(other.rating, rating));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(rating));

  @JsonKey(ignore: true)
  @override
  _$$_RatingChangedCopyWith<_$_RatingChanged> get copyWith =>
      __$$_RatingChangedCopyWithImpl<_$_RatingChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<ProductEntity> initialProduct) initialize,
    required TResult Function(String title) titleChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(String type) typeChanged,
    required TResult Function(double price) priceChanged,
    required TResult Function(int rating) ratingChanged,
    required TResult Function() saved,
  }) {
    return ratingChanged(rating);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<ProductEntity> initialProduct)? initialize,
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(String type)? typeChanged,
    TResult Function(double price)? priceChanged,
    TResult Function(int rating)? ratingChanged,
    TResult Function()? saved,
  }) {
    return ratingChanged?.call(rating);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<ProductEntity> initialProduct)? initialize,
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(String type)? typeChanged,
    TResult Function(double price)? priceChanged,
    TResult Function(int rating)? ratingChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (ratingChanged != null) {
      return ratingChanged(rating);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_TypeChanged value) typeChanged,
    required TResult Function(_PriceChanged value) priceChanged,
    required TResult Function(_RatingChanged value) ratingChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return ratingChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_TypeChanged value)? typeChanged,
    TResult Function(_PriceChanged value)? priceChanged,
    TResult Function(_RatingChanged value)? ratingChanged,
    TResult Function(_Saved value)? saved,
  }) {
    return ratingChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_TypeChanged value)? typeChanged,
    TResult Function(_PriceChanged value)? priceChanged,
    TResult Function(_RatingChanged value)? ratingChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (ratingChanged != null) {
      return ratingChanged(this);
    }
    return orElse();
  }
}

abstract class _RatingChanged implements ProductFormEvent {
  const factory _RatingChanged(final int rating) = _$_RatingChanged;

  int get rating => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_RatingChangedCopyWith<_$_RatingChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SavedCopyWith<$Res> {
  factory _$$_SavedCopyWith(_$_Saved value, $Res Function(_$_Saved) then) =
      __$$_SavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SavedCopyWithImpl<$Res> extends _$ProductFormEventCopyWithImpl<$Res>
    implements _$$_SavedCopyWith<$Res> {
  __$$_SavedCopyWithImpl(_$_Saved _value, $Res Function(_$_Saved) _then)
      : super(_value, (v) => _then(v as _$_Saved));

  @override
  _$_Saved get _value => super._value as _$_Saved;
}

/// @nodoc

class _$_Saved implements _Saved {
  const _$_Saved();

  @override
  String toString() {
    return 'ProductFormEvent.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Saved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<ProductEntity> initialProduct) initialize,
    required TResult Function(String title) titleChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(String type) typeChanged,
    required TResult Function(double price) priceChanged,
    required TResult Function(int rating) ratingChanged,
    required TResult Function() saved,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<ProductEntity> initialProduct)? initialize,
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(String type)? typeChanged,
    TResult Function(double price)? priceChanged,
    TResult Function(int rating)? ratingChanged,
    TResult Function()? saved,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<ProductEntity> initialProduct)? initialize,
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(String type)? typeChanged,
    TResult Function(double price)? priceChanged,
    TResult Function(int rating)? ratingChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_TypeChanged value) typeChanged,
    required TResult Function(_PriceChanged value) priceChanged,
    required TResult Function(_RatingChanged value) ratingChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_TypeChanged value)? typeChanged,
    TResult Function(_PriceChanged value)? priceChanged,
    TResult Function(_RatingChanged value)? ratingChanged,
    TResult Function(_Saved value)? saved,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_TypeChanged value)? typeChanged,
    TResult Function(_PriceChanged value)? priceChanged,
    TResult Function(_RatingChanged value)? ratingChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements ProductFormEvent {
  const factory _Saved() = _$_Saved;
}

/// @nodoc
mixin _$ProductFormState {
  ProductEntity? get product => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  Option<Either<ProductFailure, Unit>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductFormStateCopyWith<ProductFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductFormStateCopyWith<$Res> {
  factory $ProductFormStateCopyWith(
          ProductFormState value, $Res Function(ProductFormState) then) =
      _$ProductFormStateCopyWithImpl<$Res>;
  $Res call(
      {ProductEntity? product,
      bool showErrorMessages,
      bool isSaving,
      Option<Either<ProductFailure, Unit>> saveFailureOrSuccessOption});

  $ProductEntityCopyWith<$Res>? get product;
}

/// @nodoc
class _$ProductFormStateCopyWithImpl<$Res>
    implements $ProductFormStateCopyWith<$Res> {
  _$ProductFormStateCopyWithImpl(this._value, this._then);

  final ProductFormState _value;
  // ignore: unused_field
  final $Res Function(ProductFormState) _then;

  @override
  $Res call({
    Object? product = freezed,
    Object? showErrorMessages = freezed,
    Object? isSaving = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductEntity?,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ProductFailure, Unit>>,
    ));
  }

  @override
  $ProductEntityCopyWith<$Res>? get product {
    if (_value.product == null) {
      return null;
    }

    return $ProductEntityCopyWith<$Res>(_value.product!, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc
abstract class _$$_NoteFormStateCopyWith<$Res>
    implements $ProductFormStateCopyWith<$Res> {
  factory _$$_NoteFormStateCopyWith(
          _$_NoteFormState value, $Res Function(_$_NoteFormState) then) =
      __$$_NoteFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {ProductEntity? product,
      bool showErrorMessages,
      bool isSaving,
      Option<Either<ProductFailure, Unit>> saveFailureOrSuccessOption});

  @override
  $ProductEntityCopyWith<$Res>? get product;
}

/// @nodoc
class __$$_NoteFormStateCopyWithImpl<$Res>
    extends _$ProductFormStateCopyWithImpl<$Res>
    implements _$$_NoteFormStateCopyWith<$Res> {
  __$$_NoteFormStateCopyWithImpl(
      _$_NoteFormState _value, $Res Function(_$_NoteFormState) _then)
      : super(_value, (v) => _then(v as _$_NoteFormState));

  @override
  _$_NoteFormState get _value => super._value as _$_NoteFormState;

  @override
  $Res call({
    Object? product = freezed,
    Object? showErrorMessages = freezed,
    Object? isSaving = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_$_NoteFormState(
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductEntity?,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ProductFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_NoteFormState implements _NoteFormState {
  const _$_NoteFormState(
      {this.product,
      required this.showErrorMessages,
      required this.isSaving,
      required this.saveFailureOrSuccessOption});

  @override
  final ProductEntity? product;
  @override
  final bool showErrorMessages;
  @override
  final bool isSaving;
  @override
  final Option<Either<ProductFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'ProductFormState(product: $product, showErrorMessages: $showErrorMessages, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NoteFormState &&
            const DeepCollectionEquality().equals(other.product, product) &&
            const DeepCollectionEquality()
                .equals(other.showErrorMessages, showErrorMessages) &&
            const DeepCollectionEquality().equals(other.isSaving, isSaving) &&
            const DeepCollectionEquality().equals(
                other.saveFailureOrSuccessOption, saveFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(product),
      const DeepCollectionEquality().hash(showErrorMessages),
      const DeepCollectionEquality().hash(isSaving),
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption));

  @JsonKey(ignore: true)
  @override
  _$$_NoteFormStateCopyWith<_$_NoteFormState> get copyWith =>
      __$$_NoteFormStateCopyWithImpl<_$_NoteFormState>(this, _$identity);
}

abstract class _NoteFormState implements ProductFormState {
  const factory _NoteFormState(
      {final ProductEntity? product,
      required final bool showErrorMessages,
      required final bool isSaving,
      required final Option<Either<ProductFailure, Unit>>
          saveFailureOrSuccessOption}) = _$_NoteFormState;

  @override
  ProductEntity? get product => throw _privateConstructorUsedError;
  @override
  bool get showErrorMessages => throw _privateConstructorUsedError;
  @override
  bool get isSaving => throw _privateConstructorUsedError;
  @override
  Option<Either<ProductFailure, Unit>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_NoteFormStateCopyWith<_$_NoteFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
