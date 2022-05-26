import 'package:flutter/material.dart';
import 'package:flutter_project/config/colors/default_colors.dart';

mixin AppTextStyles {
  static h1(context) => Theme.of(context).textTheme.caption;
  static buttonTextWhite(context) => Theme.of(context)
      .textTheme
      .caption!
      .copyWith(color: AppColors.whiteBackground);

  static normalText(context) => Theme.of(context).textTheme.bodyText1;
}
