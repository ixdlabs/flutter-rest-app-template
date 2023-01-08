import 'package:flutter/material.dart';
import 'package:flutter_rest_app_template/utils/loader/delegates/loader_delegate.dart';
import 'package:flutter_rest_app_template/utils/loader/delegates/loader_delegate_impl.dart';

class Loader {
  static final Loader _instance = Loader._();

  final LoaderDelegate loaderDelegate;

  Loader._() : loaderDelegate = EasyLoadingLoaderDelegate();

  static TransitionBuilder buildOverlay() {
    return _instance.loaderDelegate.buildOverlay();
  }

  static void dismissLoader() {
    return _instance.loaderDelegate.dismissLoader();
  }

  static void showError(Object error) {
    return _instance.loaderDelegate.showError(error);
  }

  static void showLoader() {
    return _instance.loaderDelegate.showLoader();
  }

  static void showSuccess(String message) {
    return _instance.loaderDelegate.showSuccess(message);
  }
}
