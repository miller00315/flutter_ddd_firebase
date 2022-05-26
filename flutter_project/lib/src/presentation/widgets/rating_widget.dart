import 'package:flutter/material.dart';
import 'package:flutter_project/config/colors/default_colors.dart';
import 'package:flutter_project/config/design_metrics/icons_size.dart';

class RatingWidget extends StatelessWidget {
  final int rating;
  const RatingWidget({Key? key, required this.rating}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        5,
        (index) => Icon(
          Icons.star,
          color: rating >= index + 1 ? AppColors.appPurple : Colors.grey,
          size: IconSize.ultraSmall,
        ),
      ),
    );
  }
}
