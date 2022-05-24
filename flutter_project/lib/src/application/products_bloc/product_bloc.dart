import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_project/src/domain/entities/product_entity.dart';
import 'package:flutter_project/src/domain/entities/product_failures.dart';
import 'package:flutter_project/src/domain/repositories/i_product_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_event.dart';
part 'product_state.dart';
part 'product_bloc.freezed.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final IProductRepository _productRepository;

  StreamSubscription<Either<ProductFailure, List<ProductEntity>>>?
      _productsStreamSubscription;

  @override
  close() async {
    await _productsStreamSubscription?.cancel();
    super.close();
  }

  ProductBloc(this._productRepository) : super(const _Initial()) {
    on<ProductEvent>((event, emit) {
      event.map(
        startedWatchProducts: (e) async {
          await _productsStreamSubscription?.cancel();

          _productsStreamSubscription = _productRepository.watchAll().listen(
                (event) => add(
                  ProductEvent.productsReceived(event),
                ),
              );
        },
        productsReceived: (e) async {
          emit(const ProductState.loadInProgress());

          e.failureOrProducts.fold(
            (failure) => emit(ProductState.loadFailure(failure)),
            (products) => emit(ProductState.loadSuccess(products)),
          );
        },
      );
    });
  }
}
