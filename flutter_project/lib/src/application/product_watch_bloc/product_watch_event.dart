part of 'product_watch_bloc.dart';

@freezed
class ProductWatcherEvent with _$ProductWatcherEvent {
  const factory ProductWatcherEvent.startedWatchProducts() =
      _StartWatchProducts;

  const factory ProductWatcherEvent.productsReceived(
          Either<ProductFailure, List<Product>> failureOrProducts) =
      _ProductsReceived;
}
