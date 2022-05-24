import 'package:flutter_project/app/features/domain/entities/product_entity.dart';

abstract class IProductDataSource {
  Future<List<ProductEntity>> fetchProducts();

  Future updateProduct(ProductEntity product);

  Future deleteProduct(int id);
}

class ProductDataSourceImpl implements IProductDataSource {
  @override
  Future updateProduct(ProductEntity product) {
    // TODO: implement UpdateProduct
    throw UnimplementedError();
  }

  @override
  Future<List<ProductEntity>> fetchProducts() {
    // TODO: implement fetchProducts
    throw UnimplementedError();
  }

  @override
  Future deleteProduct(int id) {
    // TODO: implement deleteProduct
    throw UnimplementedError();
  }
}
