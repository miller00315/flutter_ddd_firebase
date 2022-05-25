import 'package:flutter_project/src/application/product_actor_bloc/product_actor_bloc.dart';
import 'package:flutter_project/src/application/product_form_bloc/product_form_bloc.dart';
import 'package:flutter_project/src/application/product_watcher_bloc/product_watcher_bloc.dart';
import 'package:get_it/get_it.dart';

void blocInjector(GetIt injector) {
  injector.registerLazySingleton<ProductWatcherBloc>(
    () => ProductWatcherBloc(
      injector(),
    ),
  );

  injector.registerFactory<ProductFormBloc>(
    () => ProductFormBloc(
      injector(),
    ),
  );

  injector.registerLazySingleton<ProductActorBloc>(
    () => ProductActorBloc(
      injector(),
    ),
  );
}
