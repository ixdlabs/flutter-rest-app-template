import 'package:flutter_rest_app_template/services/counter/counter_service.dart';
import 'package:flutter_rest_app_template/services/counter/counter_service_impl.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final counterServiceProvider = Provider<CounterService>((ref) {
  return CounterServiceImpl();
}, name: "counter_service_provider");

final countProvider = Provider((ref) {
  final counterService = ref.watch(counterServiceProvider);
  return counterService.count;
});
