import 'package:bloc/bloc.dart';
import 'package:flutter_project/src/domain/entities/product_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_edit_event.dart';
part 'product_edit_state.dart';
part 'product_edit_bloc.freezed.dart';

class ProductEditBloc extends Bloc<ProductEditEvent, ProductEditState> {
  ProductEditBloc() : super(_Initial()) {
    on<ProductEditEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
