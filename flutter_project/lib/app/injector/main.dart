import 'package:flutter_project/app/injector/data_sources/data_sources_injector.dart';
import 'package:flutter_project/app/injector/repositories/repositories_injector.dart';
import 'package:flutter_project/app/injector/usecases/usecases_injector.dart';
import 'package:get_it/get_it.dart';

final serviceLocator = GetIt.instance;

enum RepositoryInjector { useMock, useApi }

Future<void> init({
  RepositoryInjector repositoryInjector = RepositoryInjector.useApi,
}) async {
  dataSourcesInjector(serviceLocator);
  usecasesInjector(serviceLocator);
  repositoriesInjector(serviceLocator);
}
