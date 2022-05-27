import 'package:flutter/material.dart';
import 'package:flutter_project/config/colors/default_colors.dart';
import 'package:flutter_project/config/design_metrics/insets.dart';
import 'package:flutter_project/config/design_metrics/padding.dart';
import 'package:flutter_project/config/design_metrics/spacing.dart';
import 'package:flutter_project/src/presentation/pages/products_page/widgets/product_list_tile/widgets/product_list_tile_content.dart';
import 'package:flutter_project/src/presentation/pages/products_page/widgets/product_list_tile/widgets/produt_list_tile_thumbnail.dart';
import 'package:flutter_project/src/domain/entities/product/product.dart';

class ProductListTile extends StatefulWidget {
  final Product product;
  final void Function(Product) handleEditButtonTap;
  final void Function(Product) handleDeleteButtonTap;

  const ProductListTile({
    Key? key,
    required this.product,
    required this.handleEditButtonTap,
    required this.handleDeleteButtonTap,
  }) : super(key: key);

  @override
  State<ProductListTile> createState() => _ProductListTileState();
}

class _ProductListTileState extends State<ProductListTile>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);

    return Container(
      key: Key(widget.product.id.getOrCrash()),
      padding: AppPadding.mediumPadding,
      height: Insets.listTileHeight,
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.appGrey,
          width: 2,
        ),
      ),
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 1.0,
            child: widget.product.filename != null
                ? ProductListTileThumbnail(filename: widget.product.filename!)
                : const Icon(Icons.image),
          ),
          const SizedBox(
            width: AppSpacing.small,
          ),
          Expanded(
            child: ProductListTileContent(
              handleDeleteButtonTap: widget.handleDeleteButtonTap,
              handleEditButtonTap: widget.handleEditButtonTap,
              product: widget.product,
            ),
          ),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
