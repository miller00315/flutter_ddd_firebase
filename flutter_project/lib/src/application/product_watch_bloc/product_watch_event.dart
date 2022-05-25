part of 'product_watch_bloc.dart';

@freezed
class ProductWatchEvent with _$ProductWatchEvent {
  const factory ProductWatchEvent.startedWatchProducts() = _StartWatchProducts;

  const factory ProductWatchEvent.productsReceived(
          Either<ProductFailure, List<ProductEntity>> failureOrProducts) =
      _ProductsReceived;
}
