import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get_it/get_it.dart';

void firebaseInjector(GetIt injector) {
  injector.registerLazySingleton<FirebaseFirestore>(
    () => FirebaseFirestore.instance,
  );

  injector.registerLazySingleton<FirebaseStorage>(
    () => FirebaseStorage.instance,
  );
}
