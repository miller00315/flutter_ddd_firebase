import 'package:flutter/material.dart';
import 'package:flutter_project/config/colors/default_colors.dart';
import 'package:flutter_project/config/design_metrics/app_font_size.dart';

final ThemeData AppTheme = _buildAppTheme();

ThemeData _buildAppTheme() {
  final ThemeData base = ThemeData.light();

  return base.copyWith(
    colorScheme: base.colorScheme.copyWith(
      primary: kShrinePink100,
      onPrimary: kShrineBrown900,
      secondary: kShrineBrown900,
      error: kShrineErrorRed,
    ),
    textTheme: _bulAppTextTheme(base.textTheme),
    inputDecorationTheme: const InputDecorationTheme(
      floatingLabelStyle: TextStyle(
        color: kShrineBrown900,
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide(
          color: kShrinePink400,
          width: 1,
        ),
      ),
    ),
  );
}

TextTheme _bulAppTextTheme(TextTheme base) {
  return base
      .copyWith(
        headline5: base.headline5!.copyWith(
          fontWeight: FontWeight.w500,
        ),
        headline6: base.headline6!.copyWith(
          fontWeight: FontWeight.w400,
          fontSize: AppFontSize.small,
        ),
        caption: base.caption!.copyWith(
          fontWeight: FontWeight.w400,
          fontSize: AppFontSize.big,
        ),
        bodyText1: base.bodyText1!.copyWith(
          fontWeight: FontWeight.w500,
          fontSize: AppFontSize.medium,
        ),
      )
      .apply(
        displayColor: kShrineBrown900,
        bodyColor: kShrineBrown900,
      );
}
