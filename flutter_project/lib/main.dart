import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/injector/main.dart';
import 'package:flutter_project/src/presentation/app_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  configureInjection('');

  runApp(const AppWidget());
}
