part of 'product_watch_bloc.dart';

@freezed
class ProductWatchState with _$ProductWatchState {
  const factory ProductWatchState.initial() = _Initial;
  const factory ProductWatchState.loadInProgress() = _DataTransferInProgress;
  const factory ProductWatchState.loadSuccess(List<ProductEntity> products) =
      _LoadSuccess;
  const factory ProductWatchState.loadFailure(ProductFailure productFailure) =
      _LoadFailure;
}
