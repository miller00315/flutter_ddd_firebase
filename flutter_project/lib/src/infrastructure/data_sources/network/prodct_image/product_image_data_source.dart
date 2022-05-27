import 'package:flutter_cache_manager_firebase/flutter_cache_manager_firebase.dart';
import 'package:flutter_project/src/infrastructure/data_sources/network/prodct_image/i_prodcut_image_datasource.dart';
import 'package:flutter_project/src/infrastructure/dtos/prodcut_image/product_image_dto.dart';

class ProductImageDatSource implements IProductImageDataSource {
  final FirebaseCacheManager _firebaseCacheManager;

  ProductImageDatSource(this._firebaseCacheManager);

  @override
  Future<ProductImageDto> getProductImage(String filename) async {
    final image = await _firebaseCacheManager.getSingleFile(
      '/images/$filename',
    );

    return ProductImageDto(file: image);
  }
}
