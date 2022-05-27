import 'package:flutter_project/src/infrastructure/data_sources/network/product/i_products_data_source.dart';
import 'package:flutter_project/src/infrastructure/data_sources/network/prodct_image/i_prodcut_image_datasource.dart';
import 'package:flutter_project/src/infrastructure/data_sources/network/prodct_image/product_image_data_source.dart';
import 'package:flutter_project/src/infrastructure/data_sources/network/product/products_data_source.dart';
import 'package:get_it/get_it.dart';

void dataSourcesInjector(GetIt injector) {
  injector.registerLazySingleton<IProductDataSource>(
    () => ProductsDataSource(
      injector(),
    ),
  );

  injector.registerLazySingleton<IProductImageDataSource>(
    () => ProductImageDatSource(
      injector(),
    ),
  );
}
