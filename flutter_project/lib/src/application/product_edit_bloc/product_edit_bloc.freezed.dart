// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_edit_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductEditEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ProductEntity product) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ProductEntity product)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ProductEntity product)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Update value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Update value)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Update value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductEditEventCopyWith<$Res> {
  factory $ProductEditEventCopyWith(
          ProductEditEvent value, $Res Function(ProductEditEvent) then) =
      _$ProductEditEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProductEditEventCopyWithImpl<$Res>
    implements $ProductEditEventCopyWith<$Res> {
  _$ProductEditEventCopyWithImpl(this._value, this._then);

  final ProductEditEvent _value;
  // ignore: unused_field
  final $Res Function(ProductEditEvent) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$ProductEditEventCopyWithImpl<$Res>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, (v) => _then(v as _$_Started));

  @override
  _$_Started get _value => super._value as _$_Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'ProductEditEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ProductEntity product) update,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ProductEntity product)? update,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ProductEntity product)? update,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Update value) update,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Update value)? update,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Update value)? update,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ProductEditEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_UpdateCopyWith<$Res> {
  factory _$$_UpdateCopyWith(_$_Update value, $Res Function(_$_Update) then) =
      __$$_UpdateCopyWithImpl<$Res>;
  $Res call({ProductEntity product});

  $ProductEntityCopyWith<$Res> get product;
}

/// @nodoc
class __$$_UpdateCopyWithImpl<$Res> extends _$ProductEditEventCopyWithImpl<$Res>
    implements _$$_UpdateCopyWith<$Res> {
  __$$_UpdateCopyWithImpl(_$_Update _value, $Res Function(_$_Update) _then)
      : super(_value, (v) => _then(v as _$_Update));

  @override
  _$_Update get _value => super._value as _$_Update;

  @override
  $Res call({
    Object? product = freezed,
  }) {
    return _then(_$_Update(
      product == freezed
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

class _$_Update implements _Update {
  const _$_Update(this.product);

  @override
  final ProductEntity product;

  @override
  String toString() {
    return 'ProductEditEvent.update(product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Update &&
            const DeepCollectionEquality().equals(other.product, product));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(product));

  @JsonKey(ignore: true)
  @override
  _$$_UpdateCopyWith<_$_Update> get copyWith =>
      __$$_UpdateCopyWithImpl<_$_Update>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ProductEntity product) update,
  }) {
    return update(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ProductEntity product)? update,
  }) {
    return update?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ProductEntity product)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Update value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Update value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Update value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _Update implements ProductEditEvent {
  const factory _Update(final ProductEntity product) = _$_Update;

  ProductEntity get product => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_UpdateCopyWith<_$_Update> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductEditState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() updateInProgress,
    required TResult Function() updateSuccess,
    required TResult Function() updateFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? updateInProgress,
    TResult Function()? updateSuccess,
    TResult Function()? updateFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? updateInProgress,
    TResult Function()? updateSuccess,
    TResult Function()? updateFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_DataTransferInProgress value) updateInProgress,
    required TResult Function(_UpdateSuccess value) updateSuccess,
    required TResult Function(_UpdateFailure value) updateFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DataTransferInProgress value)? updateInProgress,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    TResult Function(_UpdateFailure value)? updateFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DataTransferInProgress value)? updateInProgress,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    TResult Function(_UpdateFailure value)? updateFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductEditStateCopyWith<$Res> {
  factory $ProductEditStateCopyWith(
          ProductEditState value, $Res Function(ProductEditState) then) =
      _$ProductEditStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProductEditStateCopyWithImpl<$Res>
    implements $ProductEditStateCopyWith<$Res> {
  _$ProductEditStateCopyWithImpl(this._value, this._then);

  final ProductEditState _value;
  // ignore: unused_field
  final $Res Function(ProductEditState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$ProductEditStateCopyWithImpl<$Res>
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
    return 'ProductEditState.initial()';
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
    required TResult Function() updateInProgress,
    required TResult Function() updateSuccess,
    required TResult Function() updateFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? updateInProgress,
    TResult Function()? updateSuccess,
    TResult Function()? updateFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? updateInProgress,
    TResult Function()? updateSuccess,
    TResult Function()? updateFailure,
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
    required TResult Function(_DataTransferInProgress value) updateInProgress,
    required TResult Function(_UpdateSuccess value) updateSuccess,
    required TResult Function(_UpdateFailure value) updateFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DataTransferInProgress value)? updateInProgress,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    TResult Function(_UpdateFailure value)? updateFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DataTransferInProgress value)? updateInProgress,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    TResult Function(_UpdateFailure value)? updateFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ProductEditState {
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
    extends _$ProductEditStateCopyWithImpl<$Res>
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
    return 'ProductEditState.updateInProgress()';
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
    required TResult Function() updateInProgress,
    required TResult Function() updateSuccess,
    required TResult Function() updateFailure,
  }) {
    return updateInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? updateInProgress,
    TResult Function()? updateSuccess,
    TResult Function()? updateFailure,
  }) {
    return updateInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? updateInProgress,
    TResult Function()? updateSuccess,
    TResult Function()? updateFailure,
    required TResult orElse(),
  }) {
    if (updateInProgress != null) {
      return updateInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_DataTransferInProgress value) updateInProgress,
    required TResult Function(_UpdateSuccess value) updateSuccess,
    required TResult Function(_UpdateFailure value) updateFailure,
  }) {
    return updateInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DataTransferInProgress value)? updateInProgress,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    TResult Function(_UpdateFailure value)? updateFailure,
  }) {
    return updateInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DataTransferInProgress value)? updateInProgress,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    TResult Function(_UpdateFailure value)? updateFailure,
    required TResult orElse(),
  }) {
    if (updateInProgress != null) {
      return updateInProgress(this);
    }
    return orElse();
  }
}

abstract class _DataTransferInProgress implements ProductEditState {
  const factory _DataTransferInProgress() = _$_DataTransferInProgress;
}

/// @nodoc
abstract class _$$_UpdateSuccessCopyWith<$Res> {
  factory _$$_UpdateSuccessCopyWith(
          _$_UpdateSuccess value, $Res Function(_$_UpdateSuccess) then) =
      __$$_UpdateSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UpdateSuccessCopyWithImpl<$Res>
    extends _$ProductEditStateCopyWithImpl<$Res>
    implements _$$_UpdateSuccessCopyWith<$Res> {
  __$$_UpdateSuccessCopyWithImpl(
      _$_UpdateSuccess _value, $Res Function(_$_UpdateSuccess) _then)
      : super(_value, (v) => _then(v as _$_UpdateSuccess));

  @override
  _$_UpdateSuccess get _value => super._value as _$_UpdateSuccess;
}

/// @nodoc

class _$_UpdateSuccess implements _UpdateSuccess {
  const _$_UpdateSuccess();

  @override
  String toString() {
    return 'ProductEditState.updateSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UpdateSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() updateInProgress,
    required TResult Function() updateSuccess,
    required TResult Function() updateFailure,
  }) {
    return updateSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? updateInProgress,
    TResult Function()? updateSuccess,
    TResult Function()? updateFailure,
  }) {
    return updateSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? updateInProgress,
    TResult Function()? updateSuccess,
    TResult Function()? updateFailure,
    required TResult orElse(),
  }) {
    if (updateSuccess != null) {
      return updateSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_DataTransferInProgress value) updateInProgress,
    required TResult Function(_UpdateSuccess value) updateSuccess,
    required TResult Function(_UpdateFailure value) updateFailure,
  }) {
    return updateSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DataTransferInProgress value)? updateInProgress,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    TResult Function(_UpdateFailure value)? updateFailure,
  }) {
    return updateSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DataTransferInProgress value)? updateInProgress,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    TResult Function(_UpdateFailure value)? updateFailure,
    required TResult orElse(),
  }) {
    if (updateSuccess != null) {
      return updateSuccess(this);
    }
    return orElse();
  }
}

abstract class _UpdateSuccess implements ProductEditState {
  const factory _UpdateSuccess() = _$_UpdateSuccess;
}

/// @nodoc
abstract class _$$_UpdateFailureCopyWith<$Res> {
  factory _$$_UpdateFailureCopyWith(
          _$_UpdateFailure value, $Res Function(_$_UpdateFailure) then) =
      __$$_UpdateFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UpdateFailureCopyWithImpl<$Res>
    extends _$ProductEditStateCopyWithImpl<$Res>
    implements _$$_UpdateFailureCopyWith<$Res> {
  __$$_UpdateFailureCopyWithImpl(
      _$_UpdateFailure _value, $Res Function(_$_UpdateFailure) _then)
      : super(_value, (v) => _then(v as _$_UpdateFailure));

  @override
  _$_UpdateFailure get _value => super._value as _$_UpdateFailure;
}

/// @nodoc

class _$_UpdateFailure implements _UpdateFailure {
  const _$_UpdateFailure();

  @override
  String toString() {
    return 'ProductEditState.updateFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UpdateFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() updateInProgress,
    required TResult Function() updateSuccess,
    required TResult Function() updateFailure,
  }) {
    return updateFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? updateInProgress,
    TResult Function()? updateSuccess,
    TResult Function()? updateFailure,
  }) {
    return updateFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? updateInProgress,
    TResult Function()? updateSuccess,
    TResult Function()? updateFailure,
    required TResult orElse(),
  }) {
    if (updateFailure != null) {
      return updateFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_DataTransferInProgress value) updateInProgress,
    required TResult Function(_UpdateSuccess value) updateSuccess,
    required TResult Function(_UpdateFailure value) updateFailure,
  }) {
    return updateFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DataTransferInProgress value)? updateInProgress,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    TResult Function(_UpdateFailure value)? updateFailure,
  }) {
    return updateFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DataTransferInProgress value)? updateInProgress,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    TResult Function(_UpdateFailure value)? updateFailure,
    required TResult orElse(),
  }) {
    if (updateFailure != null) {
      return updateFailure(this);
    }
    return orElse();
  }
}

abstract class _UpdateFailure implements ProductEditState {
  const factory _UpdateFailure() = _$_UpdateFailure;
}
