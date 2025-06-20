import 'package:flutte_rest_app_template/constants/enums.dart';
import 'package:flutte_rest_app_template/providers/auth/auth_service.dart';
import 'package:flutte_rest_app_template/services/storage/secure_storage_service_impl.dart';
import 'package:flutte_rest_app_template/utils/loader.dart';
import 'package:flutte_rest_app_template/utils/router/app_router.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth.g.dart';

@riverpod
class Auth extends _$Auth {
  @override
  AuthStatus build() => AuthStatus.unauthenticated;

  Future<void> init() async {
    try {
      final token = await SecureStorageService.instance.read(
        SecureStorageService.tokenKey,
        (value) => value,
      );
      if (token != null && token.isNotEmpty) {
        state = AuthStatus.authenticated;
        navigatorKey.currentContext?.go(AppRouter.home);
      } else {
        state = AuthStatus.unauthenticated;
        navigatorKey.currentContext?.go(AppRouter.login);
      }
    } catch (e) {
      state = AuthStatus.unauthenticated;
      navigatorKey.currentContext?.go(AppRouter.login);
      Loader.showErrorMessage('Initialization failed: ${e.toString()}');
    }
  }

  Future<void> login(String username, String password) async {
    final authService = ref.read(authServiceProvider);

    Loader.showLoader();
    try {
      final user = await authService.login(
        username: username,
        password: password,
      );

      if (user != null) {
        SecureStorageService.instance.write(
          SecureStorageService.tokenKey,
          user.accessToken,
        );
        state = AuthStatus.authenticated;
        navigatorKey.currentContext?.go(AppRouter.home);
      } else {
        state = AuthStatus.unauthenticated;
        navigatorKey.currentContext?.go(AppRouter.login);
      }
    } catch (e) {
      state = AuthStatus.unauthenticated;
      navigatorKey.currentContext?.go(AppRouter.login);
      Loader.showErrorMessage('Login failed: ${e.toString()}');
    } finally {
      Loader.dismissLoader();
    }
  }
}
