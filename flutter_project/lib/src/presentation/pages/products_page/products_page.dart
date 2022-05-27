import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project/config/colors/default_colors.dart';
import 'package:flutter_project/config/text_styles/app_text_styles.dart';
import 'package:flutter_project/config/texts/app_texts.dart';
import 'package:flutter_project/injector/main.dart';
import 'package:flutter_project/src/application/product_actor_bloc/product_actor_bloc.dart';
import 'package:flutter_project/src/application/product_watcher_bloc/product_watcher_bloc.dart';

import 'package:flutter_project/src/presentation/pages/products_page/widgets/products_page_body.dart';
import 'package:flutter_project/src/presentation/widgets/custom_alert.dart';

class ProductsPage extends StatelessWidget {
  static const routeName = '/';

  const ProductsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteBackground,
      appBar: AppBar(
        backgroundColor: AppColors.whiteBackground,
        elevation: 0,
        centerTitle: true,
        title: Text(
          AppTexts.homeTitle,
          style: AppTextStyles.h1(context),
        ),
      ),
      body: MultiBlocProvider(
        providers: [
          BlocProvider<ProductWatcherBloc>(
            create: (context) => injector<ProductWatcherBloc>()
              ..add(const ProductWatcherEvent.startedWatchProducts()),
          ),
          BlocProvider<ProductActorBloc>(
            create: (context) => injector<ProductActorBloc>(),
          ),
        ],
        child: MultiBlocListener(
          listeners: [
            BlocListener<ProductWatcherBloc, ProductWatcherState>(
              listener: (context, state) {
                state.map(
                  initial: (_) => {},
                  loadInProgress: (_) => {},
                  loadSuccess: (_) => {},
                  loadFailure: (_) =>
                      ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(AppTexts.errorLoadData),
                      backgroundColor: AppColors.appErrorRed,
                    ),
                  ),
                );
              },
            ),
            BlocListener<ProductActorBloc, ProductActorState>(
              listener: (context, state) {
                state.map(
                  initial: (_) => {},
                  deleteInProgress: (_) => {},
                  deleteSuccess: (_) {
                    showDialog(
                      context: context,
                      builder: (context) => CustomAlert(
                        message: AppTexts.itemDeleted,
                        confirmButtonText: AppTexts.close,
                        handleConfirmationButtonPress: () =>
                            Navigator.of(context).pop(false),
                      ),
                    );
                  },
                  deleteFailure: (_) =>
                      ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(AppTexts.deleteItemFailed),
                      backgroundColor: AppColors.appErrorRed,
                    ),
                  ),
                );
              },
            )
          ],
          child: const ProductPageBody(),
        ),
      ),
    );
  }
}
