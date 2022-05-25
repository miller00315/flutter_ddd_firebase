part of 'product_actor_bloc.dart';

@freezed
class ProductActorEvent with _$ProductActorEvent {
  const factory ProductActorEvent.delete(Product product) = _Delete;
}
