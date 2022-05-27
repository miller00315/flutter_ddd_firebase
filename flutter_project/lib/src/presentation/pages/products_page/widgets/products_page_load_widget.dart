import 'package:flutter/material.dart';
import 'package:flutter_project/config/colors/default_colors.dart';
import 'package:flutter_project/config/design_metrics/insets.dart';
import 'package:flutter_project/config/design_metrics/spacing.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class ProductsPageLoading extends StatelessWidget {
  const ProductsPageLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer(
      child: ListView.separated(
        padding: const EdgeInsets.all(AppSpacing.small),
        separatorBuilder: (context, index) => const SizedBox(
          height: AppSpacing.small,
        ),
        itemCount: 10,
        itemBuilder: (context, index) => Container(
          color: AppColors.appGrey,
          height: Insets.listTileHeight,
          width: double.maxFinite,
        ),
      ),
      colorOpacity: 0.3,
    );
  }
}
