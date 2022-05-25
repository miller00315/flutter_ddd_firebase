part of 'product_delete_bloc.dart';

@freezed
class ProductDeleteState with _$ProductDeleteState {
  const factory ProductDeleteState.initial() = _Initial;
  const factory ProductDeleteState.deleteInProgress() = _DataDeleteInProgress;
  const factory ProductDeleteState.deleteSuccess() = _DeleteSuccess;
  const factory ProductDeleteState.deleteFailure(
      ProductFailure productFailure) = _DeleteFailure;
}
