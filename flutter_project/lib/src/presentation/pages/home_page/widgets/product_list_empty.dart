import 'package:flutter/material.dart';
import 'package:flutter_project/config/texts/app_texts.dart';

class ProductListEmpty extends StatelessWidget {
  const ProductListEmpty({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(AppTexts.emptyList),
    );
  }
}
