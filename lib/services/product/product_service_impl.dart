import 'package:dio/dio.dart';
import 'package:flutte_rest_app_template/models/product/product.dart';
import 'package:flutte_rest_app_template/services/product/product_service.dart';
import 'package:flutte_rest_app_template/utils/api/api.dart';

class ProductServiceImpl extends ProductService {
  ProductServiceImpl({required this.api, required this.client});
  final Api api;
  final Dio client;

  @override
  Future<List<Product>> getProducts({String? search}) async {
    try {
      final response = await client.get(
        api.products,
        queryParameters: search != null ? {'search': search} : null,
      );
      if (response.statusCode == 200) {
        final List<dynamic> products = response.data['products'];
        return products.map((item) => Product.fromJson(item)).toList();
      } else {
        throw Exception('Failed to load products');
      }
    } catch (e) {
      throw Exception('Error fetching products: $e');
    }
  }
}
