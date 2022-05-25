import 'package:firebase_image/firebase_image.dart';
import 'package:flutter/material.dart';
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
              'gs://flutter-project-80ed5.appspot.com/images/${product.filename}',
              shouldCache: true,
              cacheRefreshStrategy: CacheRefreshStrategy.BY_METADATA_DATE,
            ),
            width: 90,
            height: 90,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            width: 8,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    LimitedBox(
                      maxWidth: 100,
                      child: Text(
                        product.title.getOrCrash(),
                        style: const TextStyle(
                          fontSize: 16,
                          overflow: TextOverflow.visible,
                        ),
                        maxLines: 1,
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      product.type.getOrCrash(),
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    PopupMenuButton(
                      child: const Icon(
                        Icons.more_horiz,
                        size: 28,
                      ),
                      itemBuilder: (_) => [
                        const PopupMenuItem(
                          child: Text('Editar'),
                          value: 0,
                        ),
                        const PopupMenuItem(
                          child: Text('Excluir'),
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
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
                Row(
                  children: [
                    const Spacer(),
                    Text(
                      'R\$${product.price.getOrCrash()}',
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      width: 8,
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
