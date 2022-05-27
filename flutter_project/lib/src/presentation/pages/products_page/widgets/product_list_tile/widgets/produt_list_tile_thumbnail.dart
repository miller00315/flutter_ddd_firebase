import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project/config/colors/default_colors.dart';
import 'package:flutter_project/injector/main.dart';
import 'package:flutter_project/src/application/product_image_actor_bloc/product_image_actor_bloc.dart';
import 'package:flutter_project/src/presentation/pages/products_page/widgets/product_list_tile/widgets/product_list_tile_fade_image.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class ProductListTileThumbnail extends StatelessWidget {
  final String filename;

  const ProductListTileThumbnail({Key? key, required this.filename})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => injector<ProductImageActorBloc>()
        ..add(
          ProductImageActorEvent.fetch(filename),
        ),
      child: BlocBuilder<ProductImageActorBloc, ProductImageActorState>(
        builder: (context, state) => state.map(
          initial: (value) => Container(),
          fetchFailure: (_) => const Icon(Icons.error),
          fetchInProgress: (_) => Shimmer(
            child: Container(
              color: AppColors.appGrey,
              child: const Icon(Icons.image),
            ),
            colorOpacity: 0.3,
          ),
          fetchSuccess: (value) => ProductListTileFadeImage(
            file: value.image.file,
          ),
        ),
      ),
    );
  }
}
