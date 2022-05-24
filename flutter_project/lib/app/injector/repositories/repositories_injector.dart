import 'package:flutter_project/app/features/data/repositories/product_repository_data.dart';
import 'package:flutter_project/app/features/domain/repositories/i_product_repository.dart';
import 'package:get_it/get_it.dart';

void repositoriesInjector(GetIt serviceLocator) {
  serviceLocator.registerLazySingleton<IProductRepository>(
    () => ProductRepositoryData(
      serviceLocator(),
    ),
  );
}
