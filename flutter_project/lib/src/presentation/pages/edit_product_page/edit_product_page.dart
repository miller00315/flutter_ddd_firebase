import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project/config/colors/default_colors.dart';
import 'package:flutter_project/config/design_metrics/spacing.dart';
import 'package:flutter_project/config/text_styles/app_text_styles.dart';
import 'package:flutter_project/config/texts/app_texts.dart';
import 'package:flutter_project/injector/main.dart';
import 'package:flutter_project/src/application/product_form_bloc/product_form_bloc.dart';
import 'package:flutter_project/src/domain/entities/product.dart';
import 'package:dartz/dartz.dart' as dartz;
import 'package:intl/intl.dart';

class EditProductPage extends StatefulWidget {
  static const routeName = '/edit_Product';

  final Product product;

  const EditProductPage({Key? key, required this.product}) : super(key: key);

  @override
  State<EditProductPage> createState() => _EditProductPageState();
}

class _EditProductPageState extends State<EditProductPage> {
  late ProductFormBloc bloc;

  final CurrencyTextInputFormatter _formatter = CurrencyTextInputFormatter(
    locale: 'pt_Br',
    decimalDigits: 2,
    symbol: 'R\$',
  );

  @override
  void initState() {
    bloc = injector<ProductFormBloc>();

    bloc.add(ProductFormEvent.initialize(dartz.optionOf(widget.product)));
    super.initState();
  }

  @override
  void dispose() {
    bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: BlocConsumer<ProductFormBloc, ProductFormState>(
        bloc: bloc,
        listenWhen: (p, c) =>
            p.saveFailureOrSuccessOption != c.saveFailureOrSuccessOption,
        listener: (BuildContext context, state) {
          state.saveFailureOrSuccessOption.fold(
            () => ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text(AppTexts.updateItemFailed),
                backgroundColor: Colors.red,
              ),
            ),
            (a) => ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text(AppTexts.updateItemSuccess),
              ),
            ),
          );
        },
        builder: (BuildContext context, ProductFormState state) {
          if (state.product != null) {
            return Form(
              autovalidateMode: state.showErrorMessages
                  ? AutovalidateMode.always
                  : AutovalidateMode.disabled,
              child: Column(
                children: [
                  Expanded(
                    child: ListView(
                      padding: const EdgeInsets.all(8),
                      children: [
                        TextFormField(
                          enabled: !state.isSaving,
                          decoration: const InputDecoration(
                            hintText: AppTexts.title,
                            labelText: AppTexts.title,
                          ),
                          initialValue: state.product!.title.getOrElse(''),
                          onChanged: (title) =>
                              bloc.add(ProductFormEvent.titleChanged(title)),
                          validator: (_) =>
                              bloc.state.product!.title.value.fold(
                            (failure) => failure.maybeMap(
                              empty: (f) => AppTexts.requiredField,
                              orElse: () => null,
                            ),
                            (_) => null,
                          ),
                        ),
                        const SizedBox(
                          height: AppSpacing.medium,
                        ),
                        TextFormField(
                          enabled: !state.isSaving,
                          decoration: const InputDecoration(
                            hintText: AppTexts.description,
                            labelText: AppTexts.description,
                          ),
                          minLines: 1,
                          maxLines: 5,
                          initialValue: state.product!.description,
                          onChanged: (description) => bloc.add(
                            ProductFormEvent.descriptionChanged(description),
                          ),
                        ),
                        const SizedBox(
                          height: AppSpacing.medium,
                        ),
                        TextFormField(
                          enabled: !state.isSaving,
                          decoration: const InputDecoration(
                            hintText: AppTexts.type,
                            labelText: AppTexts.type,
                          ),
                          initialValue: state.product!.type.getOrElse(''),
                          onChanged: (type) => bloc.add(
                            ProductFormEvent.typeChanged(type),
                          ),
                          validator: (_) => bloc.state.product!.type.value.fold(
                            (failure) => failure.maybeMap(
                              empty: (f) => AppTexts.requiredField,
                              orElse: () => null,
                            ),
                            (r) => null,
                          ),
                        ),
                        const SizedBox(
                          height: AppSpacing.medium,
                        ),
                        TextFormField(
                          enabled: !state.isSaving,
                          decoration: const InputDecoration(
                            labelText: AppTexts.price,
                            hintText: AppTexts.price,
                          ),
                          keyboardType: TextInputType.number,
                          inputFormatters: [_formatter],
                          initialValue: _formatter.format(
                            state.product!.price
                                        .getOrElse(0)
                                        .toString()
                                        .length ==
                                    4
                                ? state.product!.price.getOrElse(0).toString() +
                                    '0' //TODO: verificar este valor ao iniciar
                                : state.product!.price.getOrElse(0).toString(),
                          ),
                          onChanged: (value) => bloc.add(
                            ProductFormEvent.priceChanged(
                              _formatter.getUnformattedValue() as double,
                            ),
                          ),
                          validator: (_) =>
                              bloc.state.product!.price.value.fold(
                            (failure) => failure.maybeMap(
                              invalidValue: (value) => AppTexts.requiredField,
                              orElse: () => null,
                            ),
                            (_) => null,
                          ),
                        ),
                        const SizedBox(
                          height: AppSpacing.medium,
                        ),
                        TextFormField(
                          enabled: !state.isSaving,
                          decoration: const InputDecoration(
                            hintText: AppTexts.classification,
                            labelText: AppTexts.classification,
                          ),
                          keyboardType: TextInputType.number,
                          initialValue: state.product!.rating.toString(),
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(RegExp("[0-9]")),
                            FilteringTextInputFormatter.deny(RegExp(r'^0+'))
                          ],
                          onChanged: (value) {
                            final int rating = value.isEmpty
                                ? 0
                                : int.parse(value.replaceAll(',', ''));

                            bloc.add(ProductFormEvent.ratingChanged(rating));
                          },
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(16),
                    child: state.isSaving
                        ? const CircularProgressIndicator()
                        : ElevatedButton(
                            onPressed: () =>
                                bloc.add(const ProductFormEvent.saved()),
                            child: Text(
                              AppTexts.saveChanges,
                              style: AppTextStyles.buttonTextWhite(context),
                            ),
                          ),
                  )
                ],
              ),
            );
          }

          return Container();
        },
      ),
    );
  }
}
