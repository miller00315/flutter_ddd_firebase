import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_cache_manager_firebase/flutter_cache_manager_firebase.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';

void firebaseInjector(GetIt injector) {
  injector.registerLazySingleton(
    () => FirebaseFirestore.instance,
  );

  injector.registerLazySingleton(
    () => FirebaseCacheManager(),
  );

  injector.registerLazySingleton(
    () => FirebaseStorage.instance,
  );
}
