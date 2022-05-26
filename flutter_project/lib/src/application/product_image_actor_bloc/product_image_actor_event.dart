part of 'product_image_actor_bloc.dart';

@freezed
class ProductImageActorEvent with _$ProductImageActorEvent {
  const factory ProductImageActorEvent.fetch(String filename) = _Fetch;
}
