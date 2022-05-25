import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:flutter_project/src/presentation/pages/products_page/widgets/products_page_body.dart';

class ProductsPage extends HookWidget {
  const ProductsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text('Produtos'),
        ),
        body: const ProductPageBody(),
        backgroundColor: Colors.white,
      ),
    );
  }
}
