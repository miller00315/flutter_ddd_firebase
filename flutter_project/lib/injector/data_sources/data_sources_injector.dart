import 'package:flutter_project/src/infrastructure/data_sources/network/i_products_data_source.dart';
import 'package:flutter_project/src/infrastructure/data_sources/network/products_data_source.dart';
import 'package:get_it/get_it.dart';

void dataSourcesInjector(GetIt injector) {
  injector.registerLazySingleton<IProductDataSource>(
    () => ProductsDataSource(
      injector(),
      injector(),
    ),
  );
}
