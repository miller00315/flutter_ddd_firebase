import 'package:flutter_project/src/domain/repositories/i_product_repository.dart';
import 'package:flutter_project/src/infrastructure/repositories/product_repository.dart';
import 'package:get_it/get_it.dart';

void repositoriesInjector(GetIt injector) {
  injector.registerLazySingleton<IProductRepository>(
    () => ProductRepository(
      injector(),
    ),
  );
}
