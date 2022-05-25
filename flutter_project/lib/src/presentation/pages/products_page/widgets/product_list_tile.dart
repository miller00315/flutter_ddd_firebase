import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project/injector/main.dart';
import 'package:flutter_project/src/application/product_delete_bloc/product_delete_bloc.dart';
import 'package:flutter_project/src/domain/entities/product_entity.dart';

class ProductListTile extends StatefulWidget {
  final ProductEntity product;
  const ProductListTile({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  State<ProductListTile> createState() => _ProductListTileState();
}

class _ProductListTileState extends State<ProductListTile> {
  late ProductDeleteBloc bloc;

  @override
  void initState() {
    bloc = injector<ProductDeleteBloc>();
    super.initState();
  }

  @override
  void dispose() {
    bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ProductDeleteBloc, ProductDeleteState>(
      bloc: bloc,
      listener: (BuildContext context, state) {
        state.map(
          initial: (_) {},
          deleteInProgress: (_) {},
          deleteSuccess: (_) {
            print('Deletado');
          },
          deleteFailure: (state) {
            print(state.productFailure);
          },
        );
      },
      child: ListTile(
        leading: Container(
          height: 100,
          width: 100,
        ),
        title: Row(
          children: [
            Text(widget.product.title),
            const SizedBox(
              width: 10,
            ),
            Text(widget.product.type),
          ],
        ),
        subtitle: const Text('20/02/2022'),
      ),
    );
  }
}
