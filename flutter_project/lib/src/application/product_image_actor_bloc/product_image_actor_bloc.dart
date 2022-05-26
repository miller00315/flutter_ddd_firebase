import 'package:bloc/bloc.dart';
import 'package:flutter_project/src/domain/entities/product_image/product_image.dart';
import 'package:flutter_project/src/domain/entities/product_image/product_image_failures.dart';
import 'package:flutter_project/src/domain/repositories/i_product_image_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_image_actor_event.dart';
part 'product_image_actor_state.dart';
part 'product_image_actor_bloc.freezed.dart';

class ProductImageActorBloc
    extends Bloc<ProductImageActorEvent, ProductImageActorState> {
  final IProductImageRepository _repository;

  ProductImageActorBloc(this._repository) : super(const _Initial()) {
    on<ProductImageActorEvent>((event, emit) async {
      await Future.microtask(
        () => event.map(
          fetch: (e) async {
            emit(const ProductImageActorState.fetchInProgress());

            final data = await _repository.fetch(e.filename);

            data.fold(
              (failure) => emit(ProductImageActorState.fetchFailure(failure)),
              (productImage) =>
                  emit(ProductImageActorState.fetchSuccess(productImage)),
            );
          },
        ),
      );
    });
  }
}
