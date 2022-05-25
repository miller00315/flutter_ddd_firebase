import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project/injector/main.dart';
import 'package:flutter_project/src/application/product_form_bloc/product_form_bloc.dart';
import 'package:flutter_project/src/domain/core/failures.dart';
import 'package:flutter_project/src/domain/entities/product_entity.dart';
import 'package:intl/intl.dart';
import 'package:dartz/dartz.dart' as dartz;

class EditProductPage extends StatefulWidget {
  static const routeName = '/edit_Product';

  final ProductEntity product;

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

  double _formatNumber(String s) => double.parse(s);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: BlocConsumer<ProductFormBloc, ProductFormState>(
        bloc: bloc,
        listener: (BuildContext context, state) {},
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
                          initialValue: state.product!.title.getOrElse(''),
                          onChanged: (title) =>
                              bloc.add(ProductFormEvent.titleChanged(title)),
                          validator: (_) =>
                              bloc.state.product!.title.value.fold(
                            (failure) => failure.maybeMap(
                              empty: (f) => 'Este campo não pode ser vazio',
                              orElse: () => null,
                            ),
                            (_) => null,
                          ),
                        ),
                        TextFormField(
                          minLines: 1,
                          maxLines: 5,
                          initialValue: state.product!.description,
                          onChanged: (description) => bloc.add(
                            ProductFormEvent.descriptionChanged(description),
                          ),
                        ),
                        TextFormField(
                          initialValue: state.product!.type.getOrElse(''),
                          onChanged: (type) => bloc.add(
                            ProductFormEvent.typeChanged(type),
                          ),
                          validator: (_) => bloc.state.product!.type.value.fold(
                            (failure) => failure.maybeMap(
                              empty: (f) => 'Este campo não pode ser vazio',
                              orElse: () => null,
                            ),
                            (r) => null,
                          ),
                        ),
                        TextFormField(
                          keyboardType: TextInputType.number,
                          inputFormatters: [_formatter],
                          initialValue: _formatter.format(
                            state.product!.price.getOrElse(0).toString(),
                          ),
                          onChanged: (value) => bloc.add(
                            ProductFormEvent.priceChanged(
                              _formatter.getUnformattedValue() as double,
                            ),
                          ),
                          validator: (_) =>
                              bloc.state.product!.price.value.fold(
                            (failure) => failure.maybeMap(
                              empty: (value) =>
                                  'Este campo não pode ser vazio ou $value',
                              orElse: () => null,
                            ),
                            (_) => null,
                          ),
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
                            child: const Text('Salvar mudanças'),
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
