part of 'product_bloc.dart';

@freezed
class ProductEvent with _$ProductEvent {
  const factory ProductEvent.startedWatchProducts() = _StartWatchProducts;

  const factory ProductEvent.productsReceived(
          Either<ProductFailure, List<ProductEntity>> failureOrProducts) =
      _ProductsReceived;
}
