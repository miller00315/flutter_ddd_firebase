// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startedWatchProducts,
    required TResult Function(
            Either<ProductFailure, List<ProductEntity>> failureOrProducts)
        productsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? startedWatchProducts,
    TResult Function(
            Either<ProductFailure, List<ProductEntity>> failureOrProducts)?
        productsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startedWatchProducts,
    TResult Function(
            Either<ProductFailure, List<ProductEntity>> failureOrProducts)?
        productsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartWatchProducts value) startedWatchProducts,
    required TResult Function(_ProductsReceived value) productsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StartWatchProducts value)? startedWatchProducts,
    TResult Function(_ProductsReceived value)? productsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartWatchProducts value)? startedWatchProducts,
    TResult Function(_ProductsReceived value)? productsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductEventCopyWith<$Res> {
  factory $ProductEventCopyWith(
          ProductEvent value, $Res Function(ProductEvent) then) =
      _$ProductEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProductEventCopyWithImpl<$Res> implements $ProductEventCopyWith<$Res> {
  _$ProductEventCopyWithImpl(this._value, this._then);

  final ProductEvent _value;
  // ignore: unused_field
  final $Res Function(ProductEvent) _then;
}

/// @nodoc
abstract class _$$_StartWatchProductsCopyWith<$Res> {
  factory _$$_StartWatchProductsCopyWith(_$_StartWatchProducts value,
          $Res Function(_$_StartWatchProducts) then) =
      __$$_StartWatchProductsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartWatchProductsCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res>
    implements _$$_StartWatchProductsCopyWith<$Res> {
  __$$_StartWatchProductsCopyWithImpl(
      _$_StartWatchProducts _value, $Res Function(_$_StartWatchProducts) _then)
      : super(_value, (v) => _then(v as _$_StartWatchProducts));

  @override
  _$_StartWatchProducts get _value => super._value as _$_StartWatchProducts;
}

/// @nodoc

class _$_StartWatchProducts implements _StartWatchProducts {
  const _$_StartWatchProducts();

  @override
  String toString() {
    return 'ProductEvent.startedWatchProducts()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_StartWatchProducts);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startedWatchProducts,
    required TResult Function(
            Either<ProductFailure, List<ProductEntity>> failureOrProducts)
        productsReceived,
  }) {
    return startedWatchProducts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? startedWatchProducts,
    TResult Function(
            Either<ProductFailure, List<ProductEntity>> failureOrProducts)?
        productsReceived,
  }) {
    return startedWatchProducts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startedWatchProducts,
    TResult Function(
            Either<ProductFailure, List<ProductEntity>> failureOrProducts)?
        productsReceived,
    required TResult orElse(),
  }) {
    if (startedWatchProducts != null) {
      return startedWatchProducts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartWatchProducts value) startedWatchProducts,
    required TResult Function(_ProductsReceived value) productsReceived,
  }) {
    return startedWatchProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StartWatchProducts value)? startedWatchProducts,
    TResult Function(_ProductsReceived value)? productsReceived,
  }) {
    return startedWatchProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartWatchProducts value)? startedWatchProducts,
    TResult Function(_ProductsReceived value)? productsReceived,
    required TResult orElse(),
  }) {
    if (startedWatchProducts != null) {
      return startedWatchProducts(this);
    }
    return orElse();
  }
}

abstract class _StartWatchProducts implements ProductEvent {
  const factory _StartWatchProducts() = _$_StartWatchProducts;
}

/// @nodoc
abstract class _$$_ProductsReceivedCopyWith<$Res> {
  factory _$$_ProductsReceivedCopyWith(
          _$_ProductsReceived value, $Res Function(_$_ProductsReceived) then) =
      __$$_ProductsReceivedCopyWithImpl<$Res>;
  $Res call({Either<ProductFailure, List<ProductEntity>> failureOrProducts});
}

/// @nodoc
class __$$_ProductsReceivedCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res>
    implements _$$_ProductsReceivedCopyWith<$Res> {
  __$$_ProductsReceivedCopyWithImpl(
      _$_ProductsReceived _value, $Res Function(_$_ProductsReceived) _then)
      : super(_value, (v) => _then(v as _$_ProductsReceived));

  @override
  _$_ProductsReceived get _value => super._value as _$_ProductsReceived;

  @override
  $Res call({
    Object? failureOrProducts = freezed,
  }) {
    return _then(_$_ProductsReceived(
      failureOrProducts == freezed
          ? _value.failureOrProducts
          : failureOrProducts // ignore: cast_nullable_to_non_nullable
              as Either<ProductFailure, List<ProductEntity>>,
    ));
  }
}

/// @nodoc

class _$_ProductsReceived implements _ProductsReceived {
  const _$_ProductsReceived(this.failureOrProducts);

  @override
  final Either<ProductFailure, List<ProductEntity>> failureOrProducts;

  @override
  String toString() {
    return 'ProductEvent.productsReceived(failureOrProducts: $failureOrProducts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductsReceived &&
            const DeepCollectionEquality()
                .equals(other.failureOrProducts, failureOrProducts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failureOrProducts));

  @JsonKey(ignore: true)
  @override
  _$$_ProductsReceivedCopyWith<_$_ProductsReceived> get copyWith =>
      __$$_ProductsReceivedCopyWithImpl<_$_ProductsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startedWatchProducts,
    required TResult Function(
            Either<ProductFailure, List<ProductEntity>> failureOrProducts)
        productsReceived,
  }) {
    return productsReceived(failureOrProducts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? startedWatchProducts,
    TResult Function(
            Either<ProductFailure, List<ProductEntity>> failureOrProducts)?
        productsReceived,
  }) {
    return productsReceived?.call(failureOrProducts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startedWatchProducts,
    TResult Function(
            Either<ProductFailure, List<ProductEntity>> failureOrProducts)?
        productsReceived,
    required TResult orElse(),
  }) {
    if (productsReceived != null) {
      return productsReceived(failureOrProducts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartWatchProducts value) startedWatchProducts,
    required TResult Function(_ProductsReceived value) productsReceived,
  }) {
    return productsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StartWatchProducts value)? startedWatchProducts,
    TResult Function(_ProductsReceived value)? productsReceived,
  }) {
    return productsReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartWatchProducts value)? startedWatchProducts,
    TResult Function(_ProductsReceived value)? productsReceived,
    required TResult orElse(),
  }) {
    if (productsReceived != null) {
      return productsReceived(this);
    }
    return orElse();
  }
}

abstract class _ProductsReceived implements ProductEvent {
  const factory _ProductsReceived(
          final Either<ProductFailure, List<ProductEntity>> failureOrProducts) =
      _$_ProductsReceived;

  Either<ProductFailure, List<ProductEntity>> get failureOrProducts =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_ProductsReceivedCopyWith<_$_ProductsReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<ProductEntity> products) loadSuccess,
    required TResult Function(ProductFailure productFailure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<ProductEntity> products)? loadSuccess,
    TResult Function(ProductFailure productFailure)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<ProductEntity> products)? loadSuccess,
    TResult Function(ProductFailure productFailure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_DataTransferInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DataTransferInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DataTransferInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductStateCopyWith<$Res> {
  factory $ProductStateCopyWith(
          ProductState value, $Res Function(ProductState) then) =
      _$ProductStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProductStateCopyWithImpl<$Res> implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._value, this._then);

  final ProductState _value;
  // ignore: unused_field
  final $Res Function(ProductState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$ProductStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ProductState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<ProductEntity> products) loadSuccess,
    required TResult Function(ProductFailure productFailure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<ProductEntity> products)? loadSuccess,
    TResult Function(ProductFailure productFailure)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<ProductEntity> products)? loadSuccess,
    TResult Function(ProductFailure productFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_DataTransferInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DataTransferInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DataTransferInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ProductState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_DataTransferInProgressCopyWith<$Res> {
  factory _$$_DataTransferInProgressCopyWith(_$_DataTransferInProgress value,
          $Res Function(_$_DataTransferInProgress) then) =
      __$$_DataTransferInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DataTransferInProgressCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res>
    implements _$$_DataTransferInProgressCopyWith<$Res> {
  __$$_DataTransferInProgressCopyWithImpl(_$_DataTransferInProgress _value,
      $Res Function(_$_DataTransferInProgress) _then)
      : super(_value, (v) => _then(v as _$_DataTransferInProgress));

  @override
  _$_DataTransferInProgress get _value =>
      super._value as _$_DataTransferInProgress;
}

/// @nodoc

class _$_DataTransferInProgress implements _DataTransferInProgress {
  const _$_DataTransferInProgress();

  @override
  String toString() {
    return 'ProductState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataTransferInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<ProductEntity> products) loadSuccess,
    required TResult Function(ProductFailure productFailure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<ProductEntity> products)? loadSuccess,
    TResult Function(ProductFailure productFailure)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<ProductEntity> products)? loadSuccess,
    TResult Function(ProductFailure productFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_DataTransferInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DataTransferInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DataTransferInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _DataTransferInProgress implements ProductState {
  const factory _DataTransferInProgress() = _$_DataTransferInProgress;
}

/// @nodoc
abstract class _$$_LoadSuccessCopyWith<$Res> {
  factory _$$_LoadSuccessCopyWith(
          _$_LoadSuccess value, $Res Function(_$_LoadSuccess) then) =
      __$$_LoadSuccessCopyWithImpl<$Res>;
  $Res call({List<ProductEntity> products});
}

/// @nodoc
class __$$_LoadSuccessCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res>
    implements _$$_LoadSuccessCopyWith<$Res> {
  __$$_LoadSuccessCopyWithImpl(
      _$_LoadSuccess _value, $Res Function(_$_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _$_LoadSuccess));

  @override
  _$_LoadSuccess get _value => super._value as _$_LoadSuccess;

  @override
  $Res call({
    Object? products = freezed,
  }) {
    return _then(_$_LoadSuccess(
      products == freezed
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductEntity>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(final List<ProductEntity> products)
      : _products = products;

  final List<ProductEntity> _products;
  @override
  List<ProductEntity> get products {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'ProductState.loadSuccess(products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadSuccess &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
      __$$_LoadSuccessCopyWithImpl<_$_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<ProductEntity> products) loadSuccess,
    required TResult Function(ProductFailure productFailure) loadFailure,
  }) {
    return loadSuccess(products);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<ProductEntity> products)? loadSuccess,
    TResult Function(ProductFailure productFailure)? loadFailure,
  }) {
    return loadSuccess?.call(products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<ProductEntity> products)? loadSuccess,
    TResult Function(ProductFailure productFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(products);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_DataTransferInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DataTransferInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DataTransferInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements ProductState {
  const factory _LoadSuccess(final List<ProductEntity> products) =
      _$_LoadSuccess;

  List<ProductEntity> get products => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadFailureCopyWith<$Res> {
  factory _$$_LoadFailureCopyWith(
          _$_LoadFailure value, $Res Function(_$_LoadFailure) then) =
      __$$_LoadFailureCopyWithImpl<$Res>;
  $Res call({ProductFailure productFailure});

  $ProductFailureCopyWith<$Res> get productFailure;
}

/// @nodoc
class __$$_LoadFailureCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res>
    implements _$$_LoadFailureCopyWith<$Res> {
  __$$_LoadFailureCopyWithImpl(
      _$_LoadFailure _value, $Res Function(_$_LoadFailure) _then)
      : super(_value, (v) => _then(v as _$_LoadFailure));

  @override
  _$_LoadFailure get _value => super._value as _$_LoadFailure;

  @override
  $Res call({
    Object? productFailure = freezed,
  }) {
    return _then(_$_LoadFailure(
      productFailure == freezed
          ? _value.productFailure
          : productFailure // ignore: cast_nullable_to_non_nullable
              as ProductFailure,
    ));
  }

  @override
  $ProductFailureCopyWith<$Res> get productFailure {
    return $ProductFailureCopyWith<$Res>(_value.productFailure, (value) {
      return _then(_value.copyWith(productFailure: value));
    });
  }
}

/// @nodoc

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.productFailure);

  @override
  final ProductFailure productFailure;

  @override
  String toString() {
    return 'ProductState.loadFailure(productFailure: $productFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadFailure &&
            const DeepCollectionEquality()
                .equals(other.productFailure, productFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(productFailure));

  @JsonKey(ignore: true)
  @override
  _$$_LoadFailureCopyWith<_$_LoadFailure> get copyWith =>
      __$$_LoadFailureCopyWithImpl<_$_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<ProductEntity> products) loadSuccess,
    required TResult Function(ProductFailure productFailure) loadFailure,
  }) {
    return loadFailure(productFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<ProductEntity> products)? loadSuccess,
    TResult Function(ProductFailure productFailure)? loadFailure,
  }) {
    return loadFailure?.call(productFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<ProductEntity> products)? loadSuccess,
    TResult Function(ProductFailure productFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(productFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_DataTransferInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DataTransferInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DataTransferInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements ProductState {
  const factory _LoadFailure(final ProductFailure productFailure) =
      _$_LoadFailure;

  ProductFailure get productFailure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_LoadFailureCopyWith<_$_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
