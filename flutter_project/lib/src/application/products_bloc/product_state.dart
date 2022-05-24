part of 'product_bloc.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState.initial() = _Initial;
  const factory ProductState.loadInProgress() = _DataTransferInProgress;
  const factory ProductState.loadSuccess(List<ProductEntity> products) =
      _LoadSuccess;
  const factory ProductState.loadFailure(ProductFailure productFailure) =
      _LoadFailure;
}
