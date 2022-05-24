import 'package:flutter_project/src/infrastructure/data_sources/i_products_data_source.dart';
import 'package:flutter_project/src/infrastructure/data_sources/products_data_source.dart';
import 'package:get_it/get_it.dart';

void dataSourcesInjector(GetIt injector) {
  injector.registerLazySingleton<IProductDataSource>(
    () => ProductsDataSource(
      injector(),
    ),
  );
}
