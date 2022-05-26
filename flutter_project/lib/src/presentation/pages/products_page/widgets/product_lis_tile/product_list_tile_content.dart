import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/config/colors/default_colors.dart';
import 'package:flutter_project/config/design_metrics/app_font_size.dart';
import 'package:flutter_project/config/design_metrics/icons_size.dart';
import 'package:flutter_project/config/design_metrics/insets.dart';
import 'package:flutter_project/config/design_metrics/spacing.dart';
import 'package:flutter_project/config/text_styles/app_text_styles.dart';
import 'package:flutter_project/config/texts/app_texts.dart';
import 'package:flutter_project/src/domain/entities/product/product.dart';
import 'package:flutter_project/src/presentation/widgets/rating_widget.dart';
import 'package:intl/intl.dart';

class ProductListTileContent extends StatelessWidget {
  final Product product;
  final void Function(Product) handleEditButtonTap;
  final void Function(Product) handleDeleteButtonTap;

  const ProductListTileContent({
    Key? key,
    required this.product,
    required this.handleEditButtonTap,
    required this.handleDeleteButtonTap,
  }) : super(key: key);

  _productDescriptionHeader(context) => Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          LimitedBox(
            maxWidth: Insets.smallContainerWidth,
            maxHeight: Insets.smallContainerHeight,
            child: AutoSizeText(
              product.title.getOrCrash(),
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
              color: Colors.grey,
              padding: const EdgeInsets.symmetric(
                horizontal: Insets.smallPadding,
                vertical: Insets.extraSmallPadding,
              ),
              child: AutoSizeText(
                product.type.getOrCrash(),
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

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _productDescriptionHeader(context),
            PopupMenuButton(
              child: const Icon(
                Icons.more_horiz,
                size: IconSize.small,
              ),
              itemBuilder: (_) => [
                const PopupMenuItem(
                  child: Text(AppTexts.edit),
                  value: 0,
                ),
                const PopupMenuItem(
                  child: Text(AppTexts.delete),
                  value: 1,
                ),
              ],
              onSelected: (result) {
                if (result == 0) {
                  handleEditButtonTap(product);
                }
                if (result == 1) {
                  handleDeleteButtonTap(product);
                }
              },
            ),
          ],
        ),
        Text(
          DateFormat('dd/MM/yyyy').format(product.created),
          style: AppTextStyles.normalText(context),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RatingWidget(
              rating: product.rating,
            ),
            Text(
              'R\$${product.price.getOrCrash()}'.replaceAll('.0', ''),
              style: AppTextStyles.normalText(context),
            ),
          ],
        ),
      ],
    );
  }
}
