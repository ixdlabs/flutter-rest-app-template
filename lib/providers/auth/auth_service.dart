import 'package:flutte_rest_app_template/providers/dio/dio.dart';
import 'package:flutte_rest_app_template/services/auth/auth_service.dart';
import 'package:flutte_rest_app_template/services/auth/auth_service_impl.dart';
import 'package:flutte_rest_app_template/utils/api/api.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_service.g.dart';

@riverpod
AuthService authService(Ref ref) {
  final dio = ref.watch(dioProvider);
  return AuthServiceImpl(api: Api(), client: dio);
}
