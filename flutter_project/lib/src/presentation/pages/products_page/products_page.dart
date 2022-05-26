import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_project/config/colors/default_colors.dart';
import 'package:flutter_project/config/texts/app_texts.dart';
import 'package:flutter_project/injector/main.dart';
import 'package:flutter_project/src/application/product_actor_bloc/product_actor_bloc.dart';
import 'package:flutter_project/src/application/product_watcher_bloc/product_watcher_bloc.dart';

import 'package:flutter_project/src/presentation/pages/products_page/widgets/products_page_body.dart';

class ProductsPage extends HookWidget {
  static const routeName = '/';

  const ProductsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteBackground,
      appBar: AppBar(
        backgroundColor: AppColors.whiteBackground,
        elevation: 0,
        centerTitle: true,
        title: Text(
          AppTexts.appTitle,
          style: Theme.of(context).textTheme.caption,
        ),
      ),
      body: MultiBlocProvider(
        providers: [
          BlocProvider<ProductWatcherBloc>(
            create: (context) => injector<ProductWatcherBloc>()
              ..add(const ProductWatcherEvent.startedWatchProducts()),
          ),
          BlocProvider<ProductActorBloc>(
            create: (context) => injector<ProductActorBloc>(),
          ),
        ],
        child: MultiBlocListener(
          listeners: [
            BlocListener<ProductWatcherBloc, ProductWatcherState>(
              listener: (context, state) {
                state.map(
                  initial: (_) => {},
                  loadInProgress: (_) => {},
                  loadSuccess: (_) => {},
                  loadFailure: (_) =>
                      ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(AppTexts.itemDeleted),
                      backgroundColor: Colors.red,
                    ),
                  ),
                );
              },
            ),
            BlocListener<ProductActorBloc, ProductActorState>(
              listener: (context, state) {
                state.map(
                  initial: (_) => {},
                  deleteInProgress: (_) => {},
                  deleteSuccess: (_) =>
                      ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(AppTexts.itemDeleted),
                    ),
                  ),
                  deleteFailure: (_) =>
                      ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(AppTexts.deleteItemFailed),
                      backgroundColor: Colors.red,
                    ),
                  ),
                );
              },
            )
          ],
          child: const ProductPageBody(),
        ),
      ),
    );
  }
}
