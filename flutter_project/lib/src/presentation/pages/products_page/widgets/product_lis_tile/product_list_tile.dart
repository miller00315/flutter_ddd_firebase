import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project/config/design_metrics/insets.dart';
import 'package:flutter_project/config/design_metrics/padding.dart';
import 'package:flutter_project/config/design_metrics/spacing.dart';
import 'package:flutter_project/injector/main.dart';
import 'package:flutter_project/src/application/product_image_actor_bloc/product_image_actor_bloc.dart';
import 'package:flutter_project/src/presentation/pages/products_page/widgets/product_lis_tile/product_list_tile_content.dart';
import 'package:flutter_project/src/presentation/pages/products_page/widgets/product_lis_tile/produt_list_tile_thumbnail.dart';
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
          color: Colors.grey,
          width: 2,
        ),
      ),
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 1.0,
            child: widget.product.filename != null
                ? BlocProvider(
                    create: (context) => injector<ProductImageActorBloc>()
                      ..add(ProductImageActorEvent.fetch(
                          widget.product.filename!)),
                    child: BlocBuilder<ProductImageActorBloc,
                        ProductImageActorState>(
                      builder: (context, state) => state.map(
                        initial: (value) => Container(),
                        fetchFailure: (_) => const Icon(Icons.error),
                        fetchInProgress: (_) => const Padding(
                          padding: AppPadding.largePadding,
                          child: CircularProgressIndicator(),
                        ),
                        fetchSuccess: (value) =>
                            ProductListTileThumbnail(file: value.image.file),
                      ),
                    ),
                  )
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
