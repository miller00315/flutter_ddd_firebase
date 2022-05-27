import 'dart:io';

import 'package:flutter/material.dart';

class ProductListTileThumbnail extends StatelessWidget {
  final File file;
  const ProductListTileThumbnail({
    Key? key,
    required this.file,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.file(
      file,
      fit: BoxFit.cover,
    );
  }
}
