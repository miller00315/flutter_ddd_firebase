import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project/config/design_metrics/spacing.dart';
import 'package:flutter_project/config/texts/app_texts.dart';
import 'package:flutter_project/src/application/product_actor_bloc/product_actor_bloc.dart';
import 'package:flutter_project/src/application/product_watcher_bloc/product_watcher_bloc.dart';

import 'package:flutter_project/src/domain/entities/product/product.dart';
import 'package:flutter_project/src/presentation/pages/products_page/widgets/product_lis_tile/product_list_tile.dart';
import 'package:flutter_project/src/presentation/pages/products_page/widgets/product_lis_tile/produt_list_tile_thumbnail.dart';
import 'package:flutter_project/src/presentation/pages/update_product_page/update_product_page.dart';
import 'package:flutter_project/src/presentation/widgets/custom_alert.dart';
import 'package:flutter_project/src/presentation/widgets/app_error_widget.dart';
import 'package:flutter_project/src/presentation/widgets/load_widget.dart';

class ProductPageBody extends StatelessWidget {
  const ProductPageBody({Key? key}) : super(key: key);

  void _handleDeleteProduct(Product product, context) async => await showDialog(
        context: context,
        builder: (alertContext) => CustomAlert(
          handleConfirmationButtonPress: () {
            BlocProvider.of<ProductActorBloc>(context)
                .add(ProductActorEvent.delete(product));

            Navigator.of(alertContext).pop(false);
          },
          handleRejectionButtonPress: () {
            Navigator.of(alertContext).pop(false);
          },
        ),
      );

  void _handleEditProduct(Product product, context) =>
      Navigator.of(context).pushNamed(
        UpdateProductPage.routeName,
        arguments: product,
      );

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductWatcherBloc, ProductWatcherState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => Container(),
          loadInProgress: (_) => const LoadingWidget(),
          loadSuccess: (state) => ListView.separated(
            separatorBuilder: (context, _) => const SizedBox(
              height: AppSpacing.small,
            ),
            padding: const EdgeInsets.all(AppSpacing.small),
            itemCount: state.products.length,
            itemBuilder: (context, index) {
              final product = state.products[index];

              return ProductListTile(
                product: product,
                handleEditButtonTap: (product) =>
                    _handleEditProduct(product, context),
                handleDeleteButtonTap: (product) =>
                    _handleDeleteProduct(product, context),
              );
            },
          ),
          loadFailure: (state) => const AppErrorWidget(
            message: AppTexts.errorLoadData,
          ),
        );
      },
    );
  }
}
