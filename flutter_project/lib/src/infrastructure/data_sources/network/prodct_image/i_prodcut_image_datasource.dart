import 'package:flutter_project/src/infrastructure/dtos/prodcut_image/product_image_dto.dart';

abstract class IProductImageDataSource {
  Future<ProductImageDto> getProductImage(String filename);
}
