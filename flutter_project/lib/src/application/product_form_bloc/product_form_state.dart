part of 'product_form_bloc.dart';

@freezed
class ProductFormState with _$ProductFormState {
  const factory ProductFormState({
    ProductEntity? product,
    required bool showErrorMessages,
    required bool isSaving,
    required Option<Either<ProductFailure, Unit>> saveFailureOrSuccessOption,
  }) = _NoteFormState;

  factory ProductFormState.initial() => const ProductFormState(
        isSaving: false,
        saveFailureOrSuccessOption: None(),
        showErrorMessages: false,
      );
}
