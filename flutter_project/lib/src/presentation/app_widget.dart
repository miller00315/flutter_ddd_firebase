import 'package:flutter/material.dart';
import 'package:flutter_project/src/presentation/pages/products_page/products_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final router = injector<AppRouter>();

    return MaterialApp(
      title: 'Products app',
      home: const ProductsPage(),
      theme: ThemeData.light(),
    );

    /* return MaterialApp.router(
      title: 'Products app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      routeInformationParser: router.defaultRouteParser(),
      routerDelegate: AutoRouterDelegate(router),
    ); */
  }
}
