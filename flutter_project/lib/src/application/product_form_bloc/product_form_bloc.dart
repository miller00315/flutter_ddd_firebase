import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_project/src/domain/entities/product.dart';
import 'package:flutter_project/src/domain/entities/product_failures.dart';
import 'package:flutter_project/src/domain/entities/value_objects.dart';
import 'package:flutter_project/src/domain/repositories/i_product_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_form_event.dart';
part 'product_form_state.dart';
part 'product_form_bloc.freezed.dart';

class ProductFormBloc extends Bloc<ProductFormEvent, ProductFormState> {
  final IProductRepository _repository;

  ProductFormBloc(this._repository) : super(ProductFormState.initial()) {
    on<ProductFormEvent>((event, emit) async {
      await Future.microtask(
        () => event.map(
          initialize: (e) => e.initialProduct.fold(
            () => state,
            (initialProduct) {
              emit(
                state.copyWith(
                  product: initialProduct,
                ),
              );
            },
          ),
          titleChanged: (e) => emit(
            state.copyWith(
              product: state.product!.copyWith(title: ProductTitle(e.title)),
              saveFailureOrSuccessOption: none(),
            ),
          ),
          descriptionChanged: (e) => emit(state.copyWith(
            product: state.product!.copyWith(description: e.description),
            saveFailureOrSuccessOption: none(),
          )),
          typeChanged: (e) => emit(state.copyWith(
            product: state.product!.copyWith(type: ProductType(e.type)),
            saveFailureOrSuccessOption: none(),
          )),
          priceChanged: (e) => emit(state.copyWith(
            product: state.product!.copyWith(price: ProductPrice(e.price)),
            saveFailureOrSuccessOption: none(),
          )),
          ratingChanged: (e) => emit(state.copyWith(
            product: state.product!.copyWith(rating: e.rating),
            saveFailureOrSuccessOption: none(),
          )),
          saved: (e) async {
            Either<ProductFailure, Unit>? failureOrSuccess;

            emit(
              state.copyWith(
                isSaving: true,
                saveFailureOrSuccessOption: none(),
              ),
            );

            if (state.product!.failureOption.isNone()) {
              failureOrSuccess = await _repository.update(state.product!);
            }

            emit(state.copyWith(
              isSaving: false,
              showErrorMessages: true,
              saveFailureOrSuccessOption: optionOf(failureOrSuccess),
            ));
          },
        ),
      );
    });
  }
}
