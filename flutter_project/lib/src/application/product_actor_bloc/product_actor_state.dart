part of 'product_actor_bloc.dart';

@freezed
class ProductActorState with _$ProductActorState {
  const factory ProductActorState.initial() = _Initial;
  const factory ProductActorState.deleteInProgress() = _DataDeleteInProgress;
  const factory ProductActorState.deleteSuccess() = _DeleteSuccess;
  const factory ProductActorState.deleteFailure(ProductFailure productFailure) =
      _DeleteFailure;
}
