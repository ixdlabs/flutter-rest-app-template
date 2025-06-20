import 'package:flutte_rest_app_template/models/product/product.dart';

abstract class ProductService {
  Future<List<Product>> getProducts({String? search});
}
