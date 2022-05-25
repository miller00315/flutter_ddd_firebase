import 'package:flutter/material.dart';
import 'package:flutter_project/src/domain/entities/product_entity.dart';
import 'package:flutter_project/src/presentation/pages/edit_product_page/edit_product_page.dart';
import 'package:flutter_project/src/presentation/pages/products_page/products_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Products app',
      initialRoute: ProductsPage.routeName,
      theme: ThemeData.light(),
      onGenerateRoute: (settings) {
        if (settings.name == EditProductPage.routeName) {
          final product = settings.arguments as ProductEntity;
          return MaterialPageRoute(
            builder: (context) => EditProductPage(
              product: product,
            ),
          );
        }

        if (settings.name == ProductsPage.routeName) {
          return MaterialPageRoute(
            builder: (context) => const ProductsPage(),
          );
        }

        assert(false, 'Need to implement ${settings.name}');
        return null;
      },
    );
  }
}
