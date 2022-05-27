import 'package:flutter_project/injector/bloc/bloc_injector.dart';
import 'package:flutter_project/injector/data_sources/data_sources_injector.dart';
import 'package:flutter_project/injector/plugins/firebase_injector.dart';
import 'package:flutter_project/injector/repositories/repositories_injector.dart';
import 'package:get_it/get_it.dart';

final GetIt injector = GetIt.instance;

void configureInjection() {
  firebaseInjector(injector);
  dataSourcesInjector(injector);
  repositoriesInjector(injector);
  blocInjector(injector);
}
