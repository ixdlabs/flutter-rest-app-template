import 'package:flutte_rest_app_template/utils/theme/extension.dart';
import 'package:flutte_rest_app_template/widgets/skeleton.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../gen/assets.gen.dart';
import '../../providers/products/products.dart';
import 'widgets/product_item.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final products = ref.watch(productsProvider);
    return Scaffold(
      appBar: AppBar(
        title: Row(
          spacing: 16,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(Assets.images.logo, height: 32),
            const Text('Home'),
          ],
        ),
      ),
      body: products.when(
        data:
            (data) => ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                final product = data[index];
                return ProductItem(product: product);
              },
            ),
        error: (error, stack) => Center(child: Text('Error: $error')),
        loading:
            () => Skeleton(
              builder: (decoration) {
                return Column(
                  children: List.generate(
                    2,
                    (index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: context.width * 0.5,
                        height: 40,
                        decoration: decoration,
                      ),
                    ),
                  ),
                );
              },
            ),
      ),
    );
  }
}
