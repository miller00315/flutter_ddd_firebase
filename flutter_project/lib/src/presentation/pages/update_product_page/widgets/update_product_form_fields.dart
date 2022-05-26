import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project/config/design_metrics/padding.dart';
import 'package:flutter_project/config/design_metrics/spacing.dart';
import 'package:flutter_project/config/texts/app_texts.dart';
import 'package:flutter_project/src/application/product_form_bloc/product_form_bloc.dart';
import 'package:flutter_project/src/domain/entities/product_image/product_image.dart';
import 'package:flutter_project/src/domain/entities/product_image/product_image_failures.dart';
import 'package:intl/intl.dart';

class UpdateProductFormFields extends StatelessWidget {
  UpdateProductFormFields({Key? key}) : super(key: key);

  final CurrencyTextInputFormatter _formatter = CurrencyTextInputFormatter(
    locale: 'pt_Br',
    decimalDigits: 2,
    symbol: 'R\$',
  );

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductFormBloc, ProductFormState>(
      builder: (BuildContext context, ProductFormState state) {
        final bloc = BlocProvider.of<ProductFormBloc>(context);
        return Expanded(
          child: ListView(
            padding: AppPadding.mediumPadding,
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
                validator: (_) => state.product!.title.value.fold(
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
                validator: (_) => state.product!.type.value.fold(
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
                initialValue:
                    NumberFormat.simpleCurrency(locale: 'pt_BR').format(
                  state.product!.price.getOrElse(0),
                ),
                onChanged: (value) => bloc.add(
                  ProductFormEvent.priceChanged(
                    _formatter.getUnformattedValue() as double,
                  ),
                ),
                validator: (_) => state.product!.price.value.fold(
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
                  final rating = value.isEmpty ? 0 : int.parse(value);
                  bloc.add(ProductFormEvent.ratingChanged(rating));
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
