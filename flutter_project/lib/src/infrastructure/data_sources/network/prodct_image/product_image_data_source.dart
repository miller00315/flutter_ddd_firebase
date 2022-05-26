import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_project/src/infrastructure/data_sources/network/prodct_image/i_prodcut_image_datasource.dart';
import 'package:flutter_project/src/infrastructure/dtos/prodcut_image/product_image_dto.dart';

class ProductImageDatSource implements IProductImageDataSource {
  final FirebaseStorage _firebaseStore;

  ProductImageDatSource(this._firebaseStore);

  @override
  Future<ProductImageDto> getDownloadUrl(String filename) async {
    return ProductImageDto(
        url: await _firebaseStore
            .ref('images')
            .child(filename)
            .getDownloadURL());
  }
}
