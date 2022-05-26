import 'package:firebase_image/firebase_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/config/colors/default_colors.dart';
import 'package:flutter_project/config/design_metrics/icons_size.dart';
import 'package:flutter_project/config/design_metrics/spacing.dart';
import 'package:flutter_project/config/texts/app_texts.dart';
import 'package:flutter_project/src/presentation/widgets/rating_widget.dart';
import 'package:intl/intl.dart';
import 'package:flutter_project/src/domain/entities/product.dart';

class ProductListTile extends StatelessWidget {
  final Product product;
  final void Function(Product) handleEditButtonTap;
  final void Function(Product) handleDeleteButtonTap;

  const ProductListTile({
    Key? key,
    required this.product,
    required this.handleEditButtonTap,
    required this.handleDeleteButtonTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      height: 100,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
          width: 2,
        ),
      ),
      child: Row(
        children: [
          Image(
            image: FirebaseImage(
              '${AppTexts.bucketUrl}${product.filename}',
              shouldCache: true,
              cacheRefreshStrategy: CacheRefreshStrategy.BY_METADATA_DATE,
            ),
            width: 90,
            height: 90,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            width: AppSpacing.small,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    LimitedBox(
                      maxWidth: 80,
                      child: Text(
                        product.title.getOrCrash(),
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(overflow: TextOverflow.ellipsis),
                        maxLines: 1,
                      ),
                    ),
                    const SizedBox(
                      width: AppSpacing.small,
                    ),
                    LimitedBox(
                      maxWidth: 100,
                      child: Container(
                        color: Colors.grey,
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: Text(
                          product.type.getOrCrash(),
                          style:
                              Theme.of(context).textTheme.bodyText1!.copyWith(
                                    color: AppColors.whiteBackground,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    PopupMenuButton(
                      child: const Icon(
                        Icons.more_horiz,
                        size: IconSize.small,
                      ),
                      itemBuilder: (_) => [
                        const PopupMenuItem(
                          child: Text(AppTexts.edit),
                          value: 0,
                        ),
                        const PopupMenuItem(
                          child: Text(AppTexts.delete),
                          value: 1,
                        ),
                      ],
                      onSelected: (result) {
                        if (result == 0) {
                          handleEditButtonTap(product);
                        }
                        if (result == 1) {
                          handleDeleteButtonTap(product);
                        }
                      },
                    ),
                  ],
                ),
                Text(
                  DateFormat('dd/MM/yyyy').format(product.created),
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                Row(
                  children: [
                    RatingWidget(
                      rating: product.rating,
                    ),
                    const Spacer(),
                    Text(
                      'R\$${product.price.getOrCrash()}',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    const SizedBox(
                      width: AppSpacing.small,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
