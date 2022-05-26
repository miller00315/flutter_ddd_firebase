import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_project/config/colors/default_colors.dart';
import 'package:flutter_project/config/texts/app_texts.dart';
import 'package:flutter_project/config/themes/app_theme.dart';
import 'package:flutter_project/src/presentation/router/router.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.dark,
      statusBarColor: AppColors.whiteBackground,
    ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppTexts.appTitle,
      theme: AppTheme,
      onGenerateRoute: generateRoutes,
    );
  }
}
