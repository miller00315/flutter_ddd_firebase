part of 'product_delete_bloc.dart';

@freezed
class ProductDeleteEvent with _$ProductDeleteEvent {
  const factory ProductDeleteEvent.delete(ProductEntity product) = _Delete;
}
