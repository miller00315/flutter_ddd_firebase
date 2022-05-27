import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project/config/texts/app_texts.dart';
import 'package:flutter_project/src/application/product_form_bloc/product_form_bloc.dart';
import 'package:flutter_project/src/presentation/pages/update_product_page/widgets/update_product_footer_button.dart';
import 'package:flutter_project/src/presentation/pages/update_product_page/widgets/update_product_form.dart';

class UpdateHomePageBody extends StatelessWidget {
  const UpdateHomePageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProductFormBloc, ProductFormState>(
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
          return Column(
            children: [
              Form(
                autovalidateMode: state.showErrorMessages
                    ? AutovalidateMode.always
                    : AutovalidateMode.disabled,
                child: UpdateProductForm(),
              ),
              UpdateProductFooterButton(
                isSaving: state.isSaving,
                handleButtonPressed: () =>
                    BlocProvider.of<ProductFormBloc>(context)
                        .add(const ProductFormEvent.saved()),
              ),
            ],
          );
        }

        return Container();
      },
    );
  }
}
