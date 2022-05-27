import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/src/application/product_actor_bloc/product_actor_bloc.dart';
import 'package:flutter_project/src/application/product_image_actor_bloc/product_image_actor_bloc.dart';
import 'package:flutter_project/src/application/product_watcher_bloc/product_watcher_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';

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

  group('', () {
    setUpAll(() {
      serviceLocator.registerFactory(
        () => mockProductWatcherBloc,
      );

      serviceLocator.registerFactory(
        () => mockProductActorBloc,
      );

      serviceLocator.registerFactory(
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

    testWidgets('', (tester) async {});
  });
}
