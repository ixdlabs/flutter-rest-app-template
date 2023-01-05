import 'package:flutter_rest_app_template/services/theme/theme_service_impl.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final themeServiceProvider = Provider((ref) {
  return AppThemeService();
}, name: "theme_service_provider");

final themeProvider = Provider((ref) {
  final themeService = ref.watch(themeServiceProvider);

  return themeService.buildTheme();
}, name: "theme_provider");
