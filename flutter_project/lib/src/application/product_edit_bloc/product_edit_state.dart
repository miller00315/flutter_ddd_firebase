part of 'product_edit_bloc.dart';

@freezed
class ProductEditState with _$ProductEditState {
  const factory ProductEditState.initial() = _Initial;
  const factory ProductEditState.updateInProgress() = _DataTransferInProgress;
  const factory ProductEditState.updateSuccess() = _UpdateSuccess;
  const factory ProductEditState.updateFailure(ProductFailure productFailure) =
      _UpdateFailure;
}
