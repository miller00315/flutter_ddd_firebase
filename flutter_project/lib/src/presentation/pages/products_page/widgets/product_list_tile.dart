import 'package:flutter/material.dart';
import 'package:flutter_project/src/domain/entities/product_entity.dart';

class ProductListTile extends StatelessWidget {
  final ProductEntity product;
  const ProductListTile({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(product);
    return ListTile(
      leading: Container(
        height: 100,
        width: 100,
      ),
      title: Row(
        children: [
          Text(product.title),
          const SizedBox(
            width: 10,
          ),
          Text(product.type),
        ],
      ),
      subtitle: const Text(' 20/02/2022'),
    );
  }
}
