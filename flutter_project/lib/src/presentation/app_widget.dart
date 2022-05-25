import 'package:flutter/material.dart';
import 'package:flutter_project/config/themes/app_theme.dart';
import 'package:flutter_project/src/presentation/router/router.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Products app',
      theme: AppTheme,
      onGenerateRoute: generateRoutes,
    );
  }
}
