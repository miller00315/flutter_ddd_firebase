import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/config/colors/default_colors.dart';
import 'package:flutter_project/config/design_metrics/app_font_size.dart';
import 'package:flutter_project/config/design_metrics/insets.dart';
import 'package:flutter_project/config/design_metrics/spacing.dart';
import 'package:flutter_project/config/text_styles/app_text_styles.dart';

class ProductListTileHeader extends StatelessWidget {
  final String title;
  final String type;

  const ProductListTileHeader({
    Key? key,
    required this.title,
    required this.type,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        LimitedBox(
          maxWidth: Insets.smallContainerWidth,
          maxHeight: Insets.smallContainerHeight,
          child: AutoSizeText(
            title,
            style: AppTextStyles.normalText(context),
            maxLines: 2,
            minFontSize: AppFontSize.small,
          ),
        ),
        const SizedBox(
          width: AppSpacing.small,
        ),
        LimitedBox(
          maxWidth: Insets.smallContainerWidth,
          maxHeight: Insets.smallContainerHeight,
          child: Container(
            color: AppColors.appGrey,
            padding: const EdgeInsets.symmetric(
              horizontal: Insets.smallPadding,
              vertical: Insets.extraSmallPadding,
            ),
            child: AutoSizeText(
              type,
              style: AppTextStyles.normalText(context)!.copyWith(
                color: AppColors.whiteBackground,
                overflow: TextOverflow.ellipsis,
              ),
              minFontSize: AppFontSize.small,
              maxLines: 1,
            ),
          ),
        ),
      ],
    );
  }
}
