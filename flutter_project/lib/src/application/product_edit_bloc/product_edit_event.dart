part of 'product_edit_bloc.dart';

@freezed
class ProductEditEvent with _$ProductEditEvent {
  const factory ProductEditEvent.started() = _Started;
  const factory ProductEditEvent.update(ProductEntity product) = _Update;
}
