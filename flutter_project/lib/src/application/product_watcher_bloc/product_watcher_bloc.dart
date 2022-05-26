import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_project/src/domain/entities/product/product.dart';
import 'package:flutter_project/src/domain/entities/product/product_failures.dart';
import 'package:flutter_project/src/domain/repositories/i_product_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_watcher_event.dart';
part 'product_watcher_state.dart';
part 'product_watcher_bloc.freezed.dart';

class ProductWatcherBloc
    extends Bloc<ProductWatcherEvent, ProductWatcherState> {
  final IProductRepository _productRepository;

  StreamSubscription<Either<ProductFailure, List<Product>>>?
      _productsStreamSubscription;

  @override
  close() async {
    await _productsStreamSubscription?.cancel();
    super.close();
  }

  ProductWatcherBloc(this._productRepository) : super(const _Initial()) {
    on<ProductWatcherEvent>((event, emit) {
      event.map(
        startedWatchProducts: (e) async {
          emit(const ProductWatcherState.loadInProgress());

          await _productsStreamSubscription?.cancel();

          _productsStreamSubscription = _productRepository.watchAll().listen(
                (event) => add(
                  ProductWatcherEvent.productsReceived(event),
                ),
              );
        },
        productsReceived: (e) async {
          e.failureOrProducts.fold(
            (failure) => emit(ProductWatcherState.loadFailure(failure)),
            (products) => emit(ProductWatcherState.loadSuccess(products)),
          );
        },
      );
    });
  }
}
