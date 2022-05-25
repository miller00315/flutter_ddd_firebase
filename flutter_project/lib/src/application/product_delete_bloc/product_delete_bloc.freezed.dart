// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_delete_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductDeleteEvent {
  ProductEntity get product => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProductEntity product) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ProductEntity product)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProductEntity product)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Delete value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Delete value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductDeleteEventCopyWith<ProductDeleteEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDeleteEventCopyWith<$Res> {
  factory $ProductDeleteEventCopyWith(
          ProductDeleteEvent value, $Res Function(ProductDeleteEvent) then) =
      _$ProductDeleteEventCopyWithImpl<$Res>;
  $Res call({ProductEntity product});

  $ProductEntityCopyWith<$Res> get product;
}

/// @nodoc
class _$ProductDeleteEventCopyWithImpl<$Res>
    implements $ProductDeleteEventCopyWith<$Res> {
  _$ProductDeleteEventCopyWithImpl(this._value, this._then);

  final ProductDeleteEvent _value;
  // ignore: unused_field
  final $Res Function(ProductDeleteEvent) _then;

  @override
  $Res call({
    Object? product = freezed,
  }) {
    return _then(_value.copyWith(
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductEntity,
    ));
  }

  @override
  $ProductEntityCopyWith<$Res> get product {
    return $ProductEntityCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc
abstract class _$$_DeleteCopyWith<$Res>
    implements $ProductDeleteEventCopyWith<$Res> {
  factory _$$_DeleteCopyWith(_$_Delete value, $Res Function(_$_Delete) then) =
      __$$_DeleteCopyWithImpl<$Res>;
  @override
  $Res call({ProductEntity product});

  @override
  $ProductEntityCopyWith<$Res> get product;
}

/// @nodoc
class __$$_DeleteCopyWithImpl<$Res>
    extends _$ProductDeleteEventCopyWithImpl<$Res>
    implements _$$_DeleteCopyWith<$Res> {
  __$$_DeleteCopyWithImpl(_$_Delete _value, $Res Function(_$_Delete) _then)
      : super(_value, (v) => _then(v as _$_Delete));

  @override
  _$_Delete get _value => super._value as _$_Delete;

  @override
  $Res call({
    Object? product = freezed,
  }) {
    return _then(_$_Delete(
      product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductEntity,
    ));
  }
}

/// @nodoc

class _$_Delete implements _Delete {
  const _$_Delete(this.product);

  @override
  final ProductEntity product;

  @override
  String toString() {
    return 'ProductDeleteEvent.delete(product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Delete &&
            const DeepCollectionEquality().equals(other.product, product));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(product));

  @JsonKey(ignore: true)
  @override
  _$$_DeleteCopyWith<_$_Delete> get copyWith =>
      __$$_DeleteCopyWithImpl<_$_Delete>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProductEntity product) delete,
  }) {
    return delete(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ProductEntity product)? delete,
  }) {
    return delete?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProductEntity product)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Delete value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Delete value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _Delete implements ProductDeleteEvent {
  const factory _Delete(final ProductEntity product) = _$_Delete;

  @override
  ProductEntity get product => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DeleteCopyWith<_$_Delete> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductDeleteState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deleteInProgress,
    required TResult Function() deleteSuccess,
    required TResult Function(ProductFailure productFailure) deleteFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleteInProgress,
    TResult Function()? deleteSuccess,
    TResult Function(ProductFailure productFailure)? deleteFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleteInProgress,
    TResult Function()? deleteSuccess,
    TResult Function(ProductFailure productFailure)? deleteFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_DataDeleteInProgress value) deleteInProgress,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_DeleteFailure value) deleteFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DataDeleteInProgress value)? deleteInProgress,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_DeleteFailure value)? deleteFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DataDeleteInProgress value)? deleteInProgress,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_DeleteFailure value)? deleteFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDeleteStateCopyWith<$Res> {
  factory $ProductDeleteStateCopyWith(
          ProductDeleteState value, $Res Function(ProductDeleteState) then) =
      _$ProductDeleteStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProductDeleteStateCopyWithImpl<$Res>
    implements $ProductDeleteStateCopyWith<$Res> {
  _$ProductDeleteStateCopyWithImpl(this._value, this._then);

  final ProductDeleteState _value;
  // ignore: unused_field
  final $Res Function(ProductDeleteState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$ProductDeleteStateCopyWithImpl<$Res>
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
    return 'ProductDeleteState.initial()';
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
    required TResult Function() deleteInProgress,
    required TResult Function() deleteSuccess,
    required TResult Function(ProductFailure productFailure) deleteFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleteInProgress,
    TResult Function()? deleteSuccess,
    TResult Function(ProductFailure productFailure)? deleteFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleteInProgress,
    TResult Function()? deleteSuccess,
    TResult Function(ProductFailure productFailure)? deleteFailure,
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
    required TResult Function(_DataDeleteInProgress value) deleteInProgress,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_DeleteFailure value) deleteFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DataDeleteInProgress value)? deleteInProgress,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_DeleteFailure value)? deleteFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DataDeleteInProgress value)? deleteInProgress,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_DeleteFailure value)? deleteFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ProductDeleteState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_DataDeleteInProgressCopyWith<$Res> {
  factory _$$_DataDeleteInProgressCopyWith(_$_DataDeleteInProgress value,
          $Res Function(_$_DataDeleteInProgress) then) =
      __$$_DataDeleteInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DataDeleteInProgressCopyWithImpl<$Res>
    extends _$ProductDeleteStateCopyWithImpl<$Res>
    implements _$$_DataDeleteInProgressCopyWith<$Res> {
  __$$_DataDeleteInProgressCopyWithImpl(_$_DataDeleteInProgress _value,
      $Res Function(_$_DataDeleteInProgress) _then)
      : super(_value, (v) => _then(v as _$_DataDeleteInProgress));

  @override
  _$_DataDeleteInProgress get _value => super._value as _$_DataDeleteInProgress;
}

/// @nodoc

class _$_DataDeleteInProgress implements _DataDeleteInProgress {
  const _$_DataDeleteInProgress();

  @override
  String toString() {
    return 'ProductDeleteState.deleteInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_DataDeleteInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deleteInProgress,
    required TResult Function() deleteSuccess,
    required TResult Function(ProductFailure productFailure) deleteFailure,
  }) {
    return deleteInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleteInProgress,
    TResult Function()? deleteSuccess,
    TResult Function(ProductFailure productFailure)? deleteFailure,
  }) {
    return deleteInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleteInProgress,
    TResult Function()? deleteSuccess,
    TResult Function(ProductFailure productFailure)? deleteFailure,
    required TResult orElse(),
  }) {
    if (deleteInProgress != null) {
      return deleteInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_DataDeleteInProgress value) deleteInProgress,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_DeleteFailure value) deleteFailure,
  }) {
    return deleteInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DataDeleteInProgress value)? deleteInProgress,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_DeleteFailure value)? deleteFailure,
  }) {
    return deleteInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DataDeleteInProgress value)? deleteInProgress,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_DeleteFailure value)? deleteFailure,
    required TResult orElse(),
  }) {
    if (deleteInProgress != null) {
      return deleteInProgress(this);
    }
    return orElse();
  }
}

abstract class _DataDeleteInProgress implements ProductDeleteState {
  const factory _DataDeleteInProgress() = _$_DataDeleteInProgress;
}

/// @nodoc
abstract class _$$_DeleteSuccessCopyWith<$Res> {
  factory _$$_DeleteSuccessCopyWith(
          _$_DeleteSuccess value, $Res Function(_$_DeleteSuccess) then) =
      __$$_DeleteSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DeleteSuccessCopyWithImpl<$Res>
    extends _$ProductDeleteStateCopyWithImpl<$Res>
    implements _$$_DeleteSuccessCopyWith<$Res> {
  __$$_DeleteSuccessCopyWithImpl(
      _$_DeleteSuccess _value, $Res Function(_$_DeleteSuccess) _then)
      : super(_value, (v) => _then(v as _$_DeleteSuccess));

  @override
  _$_DeleteSuccess get _value => super._value as _$_DeleteSuccess;
}

/// @nodoc

class _$_DeleteSuccess implements _DeleteSuccess {
  const _$_DeleteSuccess();

  @override
  String toString() {
    return 'ProductDeleteState.deleteSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_DeleteSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deleteInProgress,
    required TResult Function() deleteSuccess,
    required TResult Function(ProductFailure productFailure) deleteFailure,
  }) {
    return deleteSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleteInProgress,
    TResult Function()? deleteSuccess,
    TResult Function(ProductFailure productFailure)? deleteFailure,
  }) {
    return deleteSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleteInProgress,
    TResult Function()? deleteSuccess,
    TResult Function(ProductFailure productFailure)? deleteFailure,
    required TResult orElse(),
  }) {
    if (deleteSuccess != null) {
      return deleteSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_DataDeleteInProgress value) deleteInProgress,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_DeleteFailure value) deleteFailure,
  }) {
    return deleteSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DataDeleteInProgress value)? deleteInProgress,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_DeleteFailure value)? deleteFailure,
  }) {
    return deleteSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DataDeleteInProgress value)? deleteInProgress,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_DeleteFailure value)? deleteFailure,
    required TResult orElse(),
  }) {
    if (deleteSuccess != null) {
      return deleteSuccess(this);
    }
    return orElse();
  }
}

abstract class _DeleteSuccess implements ProductDeleteState {
  const factory _DeleteSuccess() = _$_DeleteSuccess;
}

/// @nodoc
abstract class _$$_DeleteFailureCopyWith<$Res> {
  factory _$$_DeleteFailureCopyWith(
          _$_DeleteFailure value, $Res Function(_$_DeleteFailure) then) =
      __$$_DeleteFailureCopyWithImpl<$Res>;
  $Res call({ProductFailure productFailure});

  $ProductFailureCopyWith<$Res> get productFailure;
}

/// @nodoc
class __$$_DeleteFailureCopyWithImpl<$Res>
    extends _$ProductDeleteStateCopyWithImpl<$Res>
    implements _$$_DeleteFailureCopyWith<$Res> {
  __$$_DeleteFailureCopyWithImpl(
      _$_DeleteFailure _value, $Res Function(_$_DeleteFailure) _then)
      : super(_value, (v) => _then(v as _$_DeleteFailure));

  @override
  _$_DeleteFailure get _value => super._value as _$_DeleteFailure;

  @override
  $Res call({
    Object? productFailure = freezed,
  }) {
    return _then(_$_DeleteFailure(
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

class _$_DeleteFailure implements _DeleteFailure {
  const _$_DeleteFailure(this.productFailure);

  @override
  final ProductFailure productFailure;

  @override
  String toString() {
    return 'ProductDeleteState.deleteFailure(productFailure: $productFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteFailure &&
            const DeepCollectionEquality()
                .equals(other.productFailure, productFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(productFailure));

  @JsonKey(ignore: true)
  @override
  _$$_DeleteFailureCopyWith<_$_DeleteFailure> get copyWith =>
      __$$_DeleteFailureCopyWithImpl<_$_DeleteFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deleteInProgress,
    required TResult Function() deleteSuccess,
    required TResult Function(ProductFailure productFailure) deleteFailure,
  }) {
    return deleteFailure(productFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleteInProgress,
    TResult Function()? deleteSuccess,
    TResult Function(ProductFailure productFailure)? deleteFailure,
  }) {
    return deleteFailure?.call(productFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleteInProgress,
    TResult Function()? deleteSuccess,
    TResult Function(ProductFailure productFailure)? deleteFailure,
    required TResult orElse(),
  }) {
    if (deleteFailure != null) {
      return deleteFailure(productFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_DataDeleteInProgress value) deleteInProgress,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_DeleteFailure value) deleteFailure,
  }) {
    return deleteFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DataDeleteInProgress value)? deleteInProgress,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_DeleteFailure value)? deleteFailure,
  }) {
    return deleteFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DataDeleteInProgress value)? deleteInProgress,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_DeleteFailure value)? deleteFailure,
    required TResult orElse(),
  }) {
    if (deleteFailure != null) {
      return deleteFailure(this);
    }
    return orElse();
  }
}

abstract class _DeleteFailure implements ProductDeleteState {
  const factory _DeleteFailure(final ProductFailure productFailure) =
      _$_DeleteFailure;

  ProductFailure get productFailure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_DeleteFailureCopyWith<_$_DeleteFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
