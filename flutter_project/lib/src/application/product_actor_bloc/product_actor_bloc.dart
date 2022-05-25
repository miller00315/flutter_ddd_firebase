import 'package:bloc/bloc.dart';
import 'package:flutter_project/src/domain/entities/product.dart';
import 'package:flutter_project/src/domain/entities/product_failures.dart';
import 'package:flutter_project/src/domain/repositories/i_product_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_actor_event.dart';
part 'product_actor_state.dart';
part 'product_actor_bloc.freezed.dart';

class ProductActorBloc extends Bloc<ProductActorEvent, ProductActorState> {
  final IProductRepository repository;

  ProductActorBloc(this.repository) : super(const _Initial()) {
    on<ProductActorEvent>((event, emit) async {
      emit(const ProductActorState.deleteInProgress());

      final result = await repository.delete(event.product);

      result.fold(
        (failure) => emit(ProductActorState.deleteFailure(failure)),
        (r) => emit(const ProductActorState.deleteSuccess()),
      );
    });
  }
}
