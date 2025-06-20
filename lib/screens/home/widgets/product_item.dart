import 'package:flutte_rest_app_template/models/product/product.dart';
import 'package:flutte_rest_app_template/utils/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key, required this.product});
  final Product product;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(product.title),
      subtitle: Text(product.description),
      onTap: () {
        context.push(AppRouter.productDetails, extra: product.id);
      },
    );
  }
}
