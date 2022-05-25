import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project/injector/main.dart';
import 'package:flutter_project/src/application/products_bloc/product_bloc.dart';
import 'package:flutter_project/src/presentation/pages/products_page/widgets/product_list_tile.dart';

class ProductPageBody extends StatefulWidget {
  const ProductPageBody({Key? key}) : super(key: key);

  @override
  State<ProductPageBody> createState() => _ProductPageBodyState();
}

class _ProductPageBodyState extends State<ProductPageBody> {
  late ProductBloc bloc;

  @override
  void initState() {
    bloc = injector<ProductBloc>();

    bloc.add(const ProductEvent.startedWatchProducts());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductBloc, ProductState>(
      bloc: bloc,
      builder: (context, state) {
        return state.map(
          initial: (_) => Container(),
          loadInProgress: (_) => const Text('loading'),
          loadSuccess: (state) => ListView.builder(
            itemCount: state.products.length,
            itemBuilder: (context, index) => ProductListTile(
              product: state.products[index],
            ),
          ),
          loadFailure: (state) => const Text('falha'),
        );
      },
    );
  }
}
