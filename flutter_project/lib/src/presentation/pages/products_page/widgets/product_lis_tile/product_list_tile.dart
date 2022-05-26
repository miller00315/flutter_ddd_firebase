import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project/config/colors/default_colors.dart';
import 'package:flutter_project/config/design_metrics/app_font_size.dart';
import 'package:flutter_project/config/design_metrics/icons_size.dart';
import 'package:flutter_project/config/design_metrics/insets.dart';
import 'package:flutter_project/config/design_metrics/padding.dart';
import 'package:flutter_project/config/design_metrics/spacing.dart';
import 'package:flutter_project/config/text_styles/app_text_styles.dart';
import 'package:flutter_project/config/texts/app_texts.dart';
import 'package:flutter_project/injector/main.dart';
import 'package:flutter_project/src/application/product_image_actor_bloc/product_image_actor_bloc.dart';
import 'package:flutter_project/src/presentation/pages/products_page/widgets/product_lis_tile/produt_list_tile_thumbnail.dart';
import 'package:flutter_project/src/presentation/widgets/rating_widget.dart';
import 'package:intl/intl.dart';
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
  bool get wantKeepAlive => true;

  _productDescriptionHeader(context) => Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          LimitedBox(
            maxWidth: Insets.smallContainerWidth,
            maxHeight: Insets.smallContainerHeight,
            child: AutoSizeText(
              widget.product.title.getOrCrash(),
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
                widget.product.type.getOrCrash(),
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

  _productDescription(context) => Column(
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
                    widget.handleEditButtonTap(widget.product);
                  }
                  if (result == 1) {
                    widget.handleDeleteButtonTap(widget.product);
                  }
                },
              ),
            ],
          ),
          Text(
            DateFormat('dd/MM/yyyy').format(widget.product.created),
            style: AppTextStyles.normalText(context),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RatingWidget(
                rating: widget.product.rating,
              ),
              Text(
                'R\$${widget.product.price.getOrCrash()}'.replaceAll('.0', ''),
                style: AppTextStyles.normalText(context),
              ),
            ],
          ),
        ],
      );

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return Container(
      padding: AppPadding.mediumPadding,
      height: Insets.listTileHeight,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
          width: 2,
        ),
      ),
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 1.0,
            child: BlocProvider(
              create: (context) => injector<ProductImageActorBloc>()
                ..add(ProductImageActorEvent.fetch(widget.product.filename)),
              child: BlocBuilder<ProductImageActorBloc, ProductImageActorState>(
                builder: (context, state) => state.map(
                  initial: (value) => Container(),
                  fetchFailure: (_) => const Icon(Icons.error),
                  fetchInProgress: (_) => const Padding(
                    padding: AppPadding.largePadding,
                    child: CircularProgressIndicator(),
                  ),
                  fetchSuccess: (value) =>
                      ProductListTileThumbnail(url: value.image.url),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: AppSpacing.small,
          ),
          Expanded(
            child: _productDescription(context),
          ),
        ],
      ),
    );
  }
}
