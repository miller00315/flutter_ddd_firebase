import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project/injector/main.dart';
import 'package:flutter_project/src/application/product_actor_bloc/product_actor_bloc.dart';
import 'package:flutter_project/src/application/product_watcher_bloc/product_watcher_bloc.dart';

import 'package:flutter_project/src/domain/entities/product_entity.dart';
import 'package:flutter_project/src/presentation/pages/edit_product_page/edit_product_page.dart';
import 'package:flutter_project/src/presentation/pages/products_page/widgets/product_list_tile.dart';
import 'package:flutter_project/src/presentation/widgets/custom_alert.dart';

class ProductPageBody extends StatelessWidget {
  const ProductPageBody({Key? key}) : super(key: key);

  void _handleDeleteProduct(Product product, context) async => await showDialog(
        context: context,
        builder: (context) => CustomAlert(
          handleConfirmationButtonPress: () {
            injector<ProductActorBloc>().add(ProductActorEvent.delete(product));

            Navigator.of(context).pop(false);
          },
          handleRejectionButtonPress: () {
            Navigator.of(context).pop(false);
          },
        ),
      );

  void _handleEditProduct(Product product, context) =>
      Navigator.of(context).pushNamed(
        EditProductPage.routeName,
        arguments: product,
      );

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductWatcherBloc, ProductWatcherState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => Container(),
          loadInProgress: (_) => const Text('loading'),
          loadSuccess: (state) => ListView.separated(
            separatorBuilder: (context, _) => const SizedBox(
              height: 8,
            ),
            padding: const EdgeInsets.all(8.0),
            itemCount: state.products.length,
            itemBuilder: (context, index) => ProductListTile(
              product: state.products[index],
              handleEditButtonTap: (product) =>
                  _handleEditProduct(product, context),
              handleDeleteButtonTap: (product) =>
                  _handleDeleteProduct(product, context),
            ),
          ),
          loadFailure: (state) => const Text('falha'),
        );
      },
    );
  }
}
