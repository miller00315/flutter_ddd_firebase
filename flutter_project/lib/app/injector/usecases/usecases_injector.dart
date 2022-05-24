import 'package:flutter_project/app/features/domain/usecases/fetch_products_usecase.dart';
import 'package:flutter_project/app/features/domain/usecases/update_product_usecase.dart';
import 'package:get_it/get_it.dart';

void usecasesInjector(GetIt serviceLocator) {
  serviceLocator.registerLazySingleton<IFetchProductsUsecase>(
    () => FetchProductUsecaseImpl(
      serviceLocator(),
    ),
  );

  serviceLocator.registerLazySingleton<IUpdateProductUsecase>(
    () => UpdateProductUsecaseImpl(
      serviceLocator(),
    ),
  );
}
