part of 'product_form_bloc.dart';

@freezed
class ProductFormEvent with _$ProductFormEvent {
  const factory ProductFormEvent.initialize(Option<Product> initialProduct) =
      _Initialize;
  const factory ProductFormEvent.titleChanged(String title) = _TitleChanged;
  const factory ProductFormEvent.descriptionChanged(String description) =
      _DescriptionChanged;
  const factory ProductFormEvent.typeChanged(String type) = _TypeChanged;
  const factory ProductFormEvent.priceChanged(double price) = _PriceChanged;
  const factory ProductFormEvent.ratingChanged(int rating) = _RatingChanged;
  const factory ProductFormEvent.saved() = _Saved;
}
