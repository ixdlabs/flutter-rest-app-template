import 'package:dio/dio.dart';
import 'package:flutte_rest_app_template/models/auth/user.dart';
import 'package:flutte_rest_app_template/services/auth/auth_service.dart';
import 'package:flutte_rest_app_template/utils/api/api.dart';

class AuthServiceImpl extends AuthService {
  AuthServiceImpl({required this.api, required this.client});
  final Api api;
  final Dio client;

  @override
  Future<User?> login({
    required String username,
    required String password,
  }) async {
    try {
      final response = await client.post(
        api.signIn,
        data: {'username': username, 'password': password},
      );
      if (response.statusCode == 200) {
        return User.fromJson(response.data);
      } else {
        throw Exception('Failed to login: ${response.statusMessage}');
      }
    } on DioException catch (e) {
      /// Handle Dio exceptions
      /// For example,
      final errorMessage = e.response?.data['message'] ?? 'Unknown error';
      throw Exception('Failed to login: $errorMessage');
    }
  }
}
