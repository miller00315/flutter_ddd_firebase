import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/injector/main.dart';
import 'package:flutter_project/src/presentation/app_widget.dart';
import 'dart:developer' as developer;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  FlutterError.onError = (FlutterErrorDetails details) {
    FlutterError.dumpErrorToConsole(details);
  };

  await Firebase.initializeApp();

  configureInjection();

  runZonedGuarded(() {
    runApp(const AppWidget());
  }, (error, stackTrace) {
    developer.log(
      stackTrace.toString(),
      error: error,
    );
  });
}
