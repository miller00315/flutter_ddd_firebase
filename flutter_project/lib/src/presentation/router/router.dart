import 'package:flutter/material.dart';
import 'package:flutter_project/src/domain/entities/product/product.dart';
import 'package:flutter_project/src/presentation/pages/home_page/home_page.dart';
import 'package:flutter_project/src/presentation/pages/update_product_page/update_product_page.dart';

Route<dynamic>? generateRoutes(RouteSettings settings) {
  if (settings.name == UpdateProductPage.routeName) {
    final product = settings.arguments as Product;
    return MaterialPageRoute(
      builder: (context) => UpdateProductPage(
        product: product,
      ),
    );
  }

  if (settings.name == HomePage.routeName) {
    return MaterialPageRoute(
      builder: (context) => const HomePage(),
    );
  }

  assert(false, 'Need to implement ${settings.name}');
  return null;
}
