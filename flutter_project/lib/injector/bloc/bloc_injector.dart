import 'package:flutter_project/src/application/product_delete_bloc/product_delete_bloc.dart';
import 'package:flutter_project/src/application/product_form_bloc/product_form_bloc.dart';
import 'package:flutter_project/src/application/product_watch_bloc/product_watch_bloc.dart';
import 'package:get_it/get_it.dart';

void blocInjector(GetIt injector) {
  injector.registerLazySingleton<ProductWatchBloc>(
    () => ProductWatchBloc(
      injector(),
    ),
  );

  injector.registerFactory<ProductFormBloc>(
    () => ProductFormBloc(
      injector(),
    ),
  );

  injector.registerLazySingleton<ProductDeleteBloc>(
    () => ProductDeleteBloc(
      injector(),
    ),
  );
}
