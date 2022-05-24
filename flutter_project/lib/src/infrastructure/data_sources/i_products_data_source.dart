import 'package:flutter_project/src/infrastructure/dtos/product_dto.dart';

abstract class IProductDataSource {
  Stream<List<ProductDto>> watchAll();
  Future update(ProductDto product);
  Future delete(String id);
}
