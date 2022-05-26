import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project/config/colors/default_colors.dart';
import 'package:flutter_project/config/text_styles/app_text_styles.dart';
import 'package:flutter_project/config/texts/app_texts.dart';
import 'package:flutter_project/injector/main.dart';
import 'package:flutter_project/src/application/product_form_bloc/product_form_bloc.dart';
import 'package:flutter_project/src/domain/entities/product/product.dart';
import 'package:dartz/dartz.dart' as dartz;
import 'package:flutter_project/src/presentation/pages/update_product_page/widgets/update_product_page_body.dart';

class UpdateProductPage extends StatelessWidget {
  static const routeName = '/edit_Product';

  final Product product;

  const UpdateProductPage({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProductFormBloc>(
      create: (context) => injector<ProductFormBloc>()
        ..add(
          ProductFormEvent.initialize(
            dartz.optionOf(product),
          ),
        ),
      child: Scaffold(
        backgroundColor: AppColors.whiteBackground,
        appBar: AppBar(
          backgroundColor: AppColors.whiteBackground,
          elevation: 0,
          centerTitle: true,
          title: Text(
            AppTexts.edit,
            style: AppTextStyles.h1(context),
          ),
        ),
        body: const UpdateProductPageBody(),
      ),
    );
  }
}
