import 'package:flutter_project/src/application/product_delete_bloc/product_delete_bloc.dart';
import 'package:flutter_project/src/application/product_edit_bloc/product_edit_bloc.dart';
import 'package:flutter_project/src/application/products_bloc/product_bloc.dart';
import 'package:get_it/get_it.dart';

void blocInjector(GetIt injector) {
  injector.registerLazySingleton<ProductBloc>(
    () => ProductBloc(
      injector(),
    ),
  );

  injector.registerFactory<ProductEditBloc>(
    () => ProductEditBloc(
      injector(),
    ),
  );

  injector.registerFactory(
    () => ProductDeleteBloc(
      injector(),
    ),
  );
}
