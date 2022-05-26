part of 'product_image_actor_bloc.dart';

@freezed
class ProductImageActorState with _$ProductImageActorState {
  const factory ProductImageActorState.initial() = _Initial;
  const factory ProductImageActorState.fetchInProgress() = _DataFetchInProgress;
  const factory ProductImageActorState.fetchSuccess(ProductImage image) = _FetchSuccess;
  const factory ProductImageActorState.fetchFailure(
      ProductImageFailure productImageFailure) = _DeleteFailure;
}
