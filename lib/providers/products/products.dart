import 'package:flutte_rest_app_template/models/product/product.dart';
import 'package:flutte_rest_app_template/providers/products/product_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'products.g.dart';

@riverpod
Future<List<Product>> products(Ref ref) async {
  final service = ref.watch(productServiceProvider);
  return service.getProducts();
}
