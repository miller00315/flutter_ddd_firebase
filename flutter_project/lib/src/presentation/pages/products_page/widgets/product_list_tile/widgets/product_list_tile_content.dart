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
import 'package:flutter_project/src/presentation/pages/products_page/widgets/product_list_tile/widgets/product_list_tile_header.dart';
import 'package:flutter_project/src/presentation/pages/products_page/widgets/product_list_tile/widgets/product_list_tile_pop_up_menu.dart';
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

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ProductListTileHeader(
              title: product.title.getOrCrash(),
              type: product.type.getOrCrash(),
            ),
            ProductListTilePopUpMenu(
              handleEditButtonTap: () => handleEditButtonTap(product),
              handleDeleteButtonTap: () => handleDeleteButtonTap(product),
            ),
          ],
        ),
        Text(
          product.created != null
              ? DateFormat('dd/MM/yyyy').format(product.created!)
              : '',
          style: AppTextStyles.normalText(context),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RatingWidget(
              rating: product.rating ?? 0,
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
