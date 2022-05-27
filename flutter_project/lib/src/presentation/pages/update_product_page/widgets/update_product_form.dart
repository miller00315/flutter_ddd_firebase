import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project/config/colors/default_colors.dart';
import 'package:flutter_project/config/design_metrics/padding.dart';
import 'package:flutter_project/config/design_metrics/spacing.dart';
import 'package:flutter_project/config/texts/app_texts.dart';
import 'package:flutter_project/src/application/product_form_bloc/product_form_bloc.dart';
import 'package:flutter_project/src/domain/entities/product/value_objects.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:intl/intl.dart';

import '../../../../../config/text_styles/app_text_styles.dart';

class UpdateProductForm extends StatelessWidget {
  UpdateProductForm({Key? key}) : super(key: key);

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
                initialValue: state.product!.price.getCurrencyString(),
                onChanged: (value) => bloc.add(
                  ProductFormEvent.priceChanged(
                    _formatter.getUnformattedValue(),
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
              Center(
                child: Column(
                  children: [
                    Text(
                      AppTexts.classification,
                      style: AppTextStyles.normalText(context),
                    ),
                    RatingBar.builder(
                      allowHalfRating: false,
                      initialRating: state.product?.rating?.toDouble() ?? 0.0,
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: AppColors.appPurple,
                      ),
                      itemCount: 5,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                      onRatingUpdate: (rating) => bloc.add(
                        ProductFormEvent.ratingChanged(
                          rating.toInt(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
