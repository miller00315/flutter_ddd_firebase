import 'package:bloc/bloc.dart';
import 'package:flutter_project/src/domain/entities/product_entity.dart';
import 'package:flutter_project/src/domain/entities/product_failures.dart';
import 'package:flutter_project/src/infrastructure/repositories/product_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_edit_event.dart';
part 'product_edit_state.dart';
part 'product_edit_bloc.freezed.dart';

class ProductEditBloc extends Bloc<ProductEditEvent, ProductEditState> {
  final ProductRepository repository;

  ProductEditBloc(this.repository) : super(const _Initial()) {
    on<ProductEditEvent>((event, emit) {
      event.map(update: (e) async {
        emit(const ProductEditState.updateInProgress());

        final result = await repository.update(e.product);

        result.fold(
          (failure) => emit(ProductEditState.updateFailure(failure)),
          (_) => emit(const ProductEditState.updateSuccess()),
        );
      });
    });
  }
}
