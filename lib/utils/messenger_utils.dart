import 'package:flutter/material.dart';
import 'package:flutter_rest_app_template/utils/loader/loader.dart';
import 'package:flutter_rest_app_template/utils/loader/messenger.dart';

extension MessengerUtils on BuildContext {
  /// Returns the [Messenger] instance.
  Messenger get messenger => Loader(this);
}
