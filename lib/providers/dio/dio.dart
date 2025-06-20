import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dio.g.dart';

class TokenInterceptor extends QueuedInterceptor {
  TokenInterceptor();

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    ///TODO: Add your own logic to retrieve the token.
    ///Use `read` method's second parameter to parse the value as needed.

    // final token = await SecureStorageService.instance.read(
    //   SecureStorageService.tokenKey,
    //   (value) => value != null ? Token.fromJson(value) : Token.empty(),
    // );
    // if (!token.isValid()) return handler.next(options);
    // options.headers['Authorization'] = 'Bearer ${token.idToken}';
    return handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (err.response?.statusCode == 401) {
      ///TODO: Add your own logic to handle unauthorized errors.
      ///For example, you might want to clear the token and redirect to the login page
      ///or refresh the token.
      // SecureStorageService.instance.deleteAll();
      // GoRouter.of(navigatorKey.currentContext!).go(AppRouter.login);
    }
    super.onError(err, handler);
  }
}

@riverpod
Dio dio(Ref ref) {
  final dio = Dio();
  return dio..interceptors.add(TokenInterceptor());
}
