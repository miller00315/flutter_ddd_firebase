import 'dart:async';

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/config/texts/app_texts.dart';
import 'package:flutter_project/src/application/product_actor_bloc/product_actor_bloc.dart';
import 'package:flutter_project/src/application/product_image_actor_bloc/product_image_actor_bloc.dart';
import 'package:flutter_project/src/application/product_watcher_bloc/product_watcher_bloc.dart';
import 'package:flutter_project/src/presentation/pages/home_page/home_page.dart';
import 'package:flutter_project/src/presentation/pages/home_page/widgets/product_list_empty.dart';
import 'package:flutter_project/src/presentation/pages/home_page/widgets/product_list_tile/product_list_tile.dart';
import 'package:flutter_project/src/presentation/pages/home_page/widgets/product_list_tile/widgets/product_list_tile_pop_up_menu.dart';
import 'package:flutter_project/src/presentation/pages/home_page/widgets/products_list_loading.dart';
import 'package:flutter_project/src/presentation/widgets/custom_alert.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';

import '../../../../../../mocks/fake_data.dart';

class MockProductWatcherBloc
    extends MockBloc<ProductWatcherEvent, ProductWatcherState>
    implements ProductWatcherBloc {}

class MockProductActorBloc
    extends MockBloc<ProductActorEvent, ProductActorState>
    implements ProductActorBloc {}

class MockProductImageBloc
    extends MockBloc<ProductImageActorEvent, ProductImageActorState>
    implements ProductImageActorBloc {}

main() {
  final serviceLocator = GetIt.instance;

  final mockProductWatcherBloc = MockProductWatcherBloc();
  final mockProductActorBloc = MockProductActorBloc();
  final mockProductImageBloc = MockProductImageBloc();

  group('HomePage group =>', () {
    setUpAll(() {
      serviceLocator.registerFactory<ProductWatcherBloc>(
        () => mockProductWatcherBloc,
      );

      serviceLocator.registerFactory<ProductActorBloc>(
        () => mockProductActorBloc,
      );

      serviceLocator.registerFactory<ProductImageActorBloc>(
        () => mockProductImageBloc,
      );
    });

    tearDownAll(() {
      mockProductActorBloc.close();
      mockProductImageBloc.close();
      mockProductWatcherBloc.close();
    });

    Widget createWidgetForTesting(child) => MaterialApp(
          home: Material(
            child: child,
          ),
        );

    testWidgets(
        'should show [ProductListLoading] when state is [ProductWatcherState.loadInProgress]',
        (tester) async {
      whenListen(
        mockProductWatcherBloc,
        Stream.fromIterable([const ProductWatcherState.loadInProgress()]),
        initialState: const ProductWatcherState.initial(),
      );

      whenListen(
        mockProductActorBloc,
        Stream.fromIterable([const ProductActorState.initial()]),
        initialState: const ProductActorState.initial(),
      );

      await tester.pumpWidget(
        createWidgetForTesting(
          const HomePage(),
        ),
      );

      await tester.pump();

      final loadingWidget = find.byType(ProductListLoading);

      expect(loadingWidget, findsOneWidget);
    });

    testWidgets(
        'should show [ProductListEmpty] when state is [ProductWatcherState.loadSuccess] as list is empty',
        (tester) async {
      whenListen(
        mockProductWatcherBloc,
        Stream.fromIterable([const ProductWatcherState.loadSuccess([])]),
        initialState: const ProductWatcherState.loadInProgress(),
      );

      whenListen(
        mockProductActorBloc,
        Stream.fromIterable([const ProductActorState.initial()]),
        initialState: const ProductActorState.initial(),
      );

      await tester.pumpWidget(
        createWidgetForTesting(
          const HomePage(),
        ),
      );

      await tester.pump();

      final emptyList = find.byType(ProductListEmpty);

      final loadingWidget = find.byType(ProductListLoading);

      expect(emptyList, findsOneWidget);
      expect(loadingWidget, findsNothing);
    });

    testWidgets(
        'should show [ProductListTile] when state is [ProductWatcherState.loadSuccess] as list is not empty',
        (tester) async {
      whenListen(
        mockProductWatcherBloc,
        Stream.fromIterable([
          ProductWatcherState.loadSuccess([fakeProduct])
        ]),
        initialState: const ProductWatcherState.loadInProgress(),
      );

      whenListen(
        mockProductActorBloc,
        Stream.fromIterable([const ProductActorState.initial()]),
        initialState: const ProductActorState.initial(),
      );

      whenListen(
        mockProductImageBloc,
        Stream.fromIterable([const ProductImageActorState.initial()]),
        initialState: const ProductImageActorState.initial(),
      );

      await tester.pumpWidget(
        createWidgetForTesting(
          const HomePage(),
        ),
      );

      await tester.pump();

      final emptyList = find.byType(ProductListEmpty);

      final loadingWidget = find.byType(ProductListLoading);

      final productListTile = find.byType(ProductListTile);

      expect(productListTile, findsOneWidget);
      expect(emptyList, findsNothing);
      expect(loadingWidget, findsNothing);
    });

    testWidgets(
        'when trey to delete a product should show a alert to confirm or cancel',
        (tester) async {
      whenListen(
        mockProductWatcherBloc,
        Stream.fromIterable([
          ProductWatcherState.loadSuccess([fakeProduct])
        ]),
        initialState: ProductWatcherState.loadSuccess([fakeProduct]),
      );

      whenListen(
        mockProductActorBloc,
        Stream.fromIterable([const ProductActorState.initial()]),
        initialState: const ProductActorState.initial(),
      );

      whenListen(
        mockProductImageBloc,
        Stream.fromIterable([const ProductImageActorState.initial()]),
        initialState: const ProductImageActorState.initial(),
      );

      await tester.pumpWidget(
        createWidgetForTesting(
          const HomePage(),
        ),
      );

      await tester.pump();

      await tester.tap(find.byType(PopupMenuButton<PopMenuOptions>));

      await tester.pump();

      final deleteButton = find.text(AppTexts.delete);

      await tester.ensureVisible(deleteButton);

      await tester.pumpAndSettle();

      await tester.tap(deleteButton);

      await tester.pump();

      expect(find.byType(CustomAlert), findsOneWidget);

      expect(find.text(AppTexts.cancel), findsOneWidget);

      expect(find.text(AppTexts.confirm), findsOneWidget);
    });
  });
}
