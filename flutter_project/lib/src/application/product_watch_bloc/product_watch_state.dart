part of 'product_watch_bloc.dart';

@freezed
class ProductWatcherState with _$ProductWatcherState {
  const factory ProductWatcherState.initial() = _Initial;
  const factory ProductWatcherState.loadInProgress() = _DataTransferInProgress;
  const factory ProductWatcherState.loadSuccess(List<Product> products) =
      _LoadSuccess;
  const factory ProductWatcherState.loadFailure(ProductFailure productFailure) =
      _LoadFailure;
}
