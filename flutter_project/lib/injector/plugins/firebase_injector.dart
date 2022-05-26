import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_project/src/infrastructure/data_sources/network/products_data_source.dart';
import 'package:get_it/get_it.dart';

void firebaseInjector(GetIt injector) {
  injector.registerLazySingleton<FirebaseFirestore>(
    () => FirebaseFirestore.instance,
  );

  injector.registerLazySingleton<FirebaseStorage>(
    () => FirebaseStorage.instance,
  );
}
