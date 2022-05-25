import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_project/injector/main.dart';
import 'package:flutter_project/src/application/product_delete_bloc/product_delete_bloc.dart';
import 'package:flutter_project/src/application/product_watch_bloc/product_watch_bloc.dart';

import 'package:flutter_project/src/presentation/pages/products_page/widgets/products_page_body.dart';

class ProductsPage extends HookWidget {
  static const routeName = '/';

  const ProductsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: MultiBlocProvider(
        providers: [
          BlocProvider<ProductWatchBloc>(
            create: (context) => injector<ProductWatchBloc>()
              ..add(const ProductWatchEvent.startedWatchProducts()),
          ),
          BlocProvider<ProductDeleteBloc>(
            create: (context) => injector<ProductDeleteBloc>(),
          ),
        ],
        child: MultiBlocListener(
          listeners: [
            BlocListener<ProductWatchBloc, ProductWatchState>(
              listener: (context, state) {
                state.map(
                  initial: (_) => {},
                  loadInProgress: (_) => {},
                  loadSuccess: (_) => {},
                  loadFailure: (_) =>
                      ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Item excluido'),
                      backgroundColor: Colors.red,
                    ),
                  ),
                );
              },
            ),
            BlocListener<ProductDeleteBloc, ProductDeleteState>(
              listener: (context, state) {
                state.map(
                  initial: (_) => {},
                  deleteInProgress: (_) => {},
                  deleteSuccess: (_) =>
                      ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Item excluido'),
                    ),
                  ),
                  deleteFailure: (_) =>
                      ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Falha ao excluir item'),
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
