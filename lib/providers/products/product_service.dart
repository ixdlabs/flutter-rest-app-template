import 'package:flutte_rest_app_template/providers/dio/dio.dart';
import 'package:flutte_rest_app_template/services/product/product_service_impl.dart';
import 'package:flutte_rest_app_template/utils/api/api.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'product_service.g.dart';

@riverpod
ProductServiceImpl productService(Ref ref) {
  final dio = ref.watch(dioProvider);
  return ProductServiceImpl(api: Api(), client: dio);
}
