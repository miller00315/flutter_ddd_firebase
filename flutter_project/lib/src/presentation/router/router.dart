import 'package:flutter/material.dart';
import 'package:flutter_project/src/domain/entities/product.dart';
import 'package:flutter_project/src/presentation/pages/edit_product_page/edit_product_page.dart';
import 'package:flutter_project/src/presentation/pages/products_page/products_page.dart';

Route<dynamic>? generateRoutes(RouteSettings settings) {
  if (settings.name == EditProductPage.routeName) {
    final product = settings.arguments as Product;
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
}
