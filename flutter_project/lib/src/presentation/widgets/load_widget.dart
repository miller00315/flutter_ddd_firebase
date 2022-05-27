import 'package:flutter/material.dart';
import 'package:flutter_project/config/design_metrics/spacing.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({Key? key}) : super(key: key);

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
          color: Colors.grey,
          height: 100,
          width: double.maxFinite,
        ),
      ),
      colorOpacity: 0.3,
    );
  }
}
