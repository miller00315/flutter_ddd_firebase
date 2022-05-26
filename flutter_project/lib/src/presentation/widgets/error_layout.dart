import 'package:flutter/material.dart';
import 'package:flutter_project/config/design_metrics/icons_size.dart';
import 'package:flutter_project/config/design_metrics/spacing.dart';

class ErrorLayout extends StatelessWidget {
  final String message;

  const ErrorLayout({
    Key? key,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(message),
          const SizedBox(
            height: AppSpacing.medium,
          ),
          const Icon(
            Icons.error,
            size: IconSize.medium,
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}
