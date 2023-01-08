import 'package:flutter_rest_app_template/services/counter/counter_service.dart';
import 'package:flutter_rest_app_template/utils/logger/logger.dart';

class CounterServiceImpl extends CounterService {
  int _count = 0;

  @override
  int get count => _count;

  @override
  void increment() {
    _count++;
    Log.i("Counter incremented to $_count");
  }
}
