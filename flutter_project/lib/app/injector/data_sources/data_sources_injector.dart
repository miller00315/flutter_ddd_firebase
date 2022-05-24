import 'package:flutter_project/app/features/data/data_sources/product_data_source.dart';
import 'package:get_it/get_it.dart';

void dataSourcesInjector(GetIt serviceLocator) {
  serviceLocator.registerLazySingleton<IProductDataSource>(
    () => ProductDataSourceImpl(),
  );
}
