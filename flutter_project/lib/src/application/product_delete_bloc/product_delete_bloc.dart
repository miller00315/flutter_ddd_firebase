import 'package:bloc/bloc.dart';
import 'package:flutter_project/src/domain/entities/product_entity.dart';
import 'package:flutter_project/src/domain/entities/product_failures.dart';
import 'package:flutter_project/src/infrastructure/repositories/product_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_delete_event.dart';
part 'product_delete_state.dart';
part 'product_delete_bloc.freezed.dart';

class ProductDeleteBloc extends Bloc<ProductDeleteEvent, ProductDeleteState> {
  final ProductRepository repository;

  ProductDeleteBloc(this.repository) : super(const _Initial()) {
    on<ProductDeleteEvent>((event, emit) {
      event.map(delete: (e) async {
        emit(const ProductDeleteState.deleteInProgress());

        final result = await repository.delete(e.product);

        result.fold(
          (failure) => emit(ProductDeleteState.deleteFailure(failure)),
          (r) => emit(const ProductDeleteState.deleteSuccess()),
        );
      });
    });
  }
}
