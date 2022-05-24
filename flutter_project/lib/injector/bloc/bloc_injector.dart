import 'package:flutter_project/src/application/products_bloc/product_bloc.dart';
import 'package:get_it/get_it.dart';

void blocInjector(GetIt injector) {
  injector.registerLazySingleton<ProductBloc>(
    () => ProductBloc(
      injector(),
    ),
  );
}
