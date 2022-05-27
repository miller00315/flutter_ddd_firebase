import 'dart:io';

import 'package:flutter/material.dart';

class ProductListTileFadeImage extends StatefulWidget {
  final File file;
  const ProductListTileFadeImage({
    Key? key,
    required this.file,
  }) : super(key: key);

  @override
  State<ProductListTileFadeImage> createState() =>
      _ProductListTileFadeImageState();
}

class _ProductListTileFadeImageState extends State<ProductListTileFadeImage>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(milliseconds: 1500),
    vsync: this,
  );

  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeIn,
  );

  @override
  void initState() {
    super.initState();
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animation,
      child: Image.file(
        widget.file,
        fit: BoxFit.cover,
      ),
    );
  }
}
