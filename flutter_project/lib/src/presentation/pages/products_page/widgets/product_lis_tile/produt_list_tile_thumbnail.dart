import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ProductListTileThumbnail extends StatelessWidget {
  final String url;
  const ProductListTileThumbnail({
    Key? key,
    required this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: url,
      fit: BoxFit.cover,
      progressIndicatorBuilder: (context, url, progress) => Center(
        child: CircularProgressIndicator(
          value: progress.progress,
        ),
      ),
      errorWidget: (context, url, error) => const Icon(Icons.error),
    );
  }
}
