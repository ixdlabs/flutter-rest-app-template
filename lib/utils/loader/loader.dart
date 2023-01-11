import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class Loader {
  Loader._();

  static TransitionBuilder buildOverlay() {
    return EasyLoading.init();
  }

  static void showErrorMessage(String message) {
    EasyLoading.showError(
      message,
      dismissOnTap: true,
      duration: const Duration(seconds: 5),
      maskType: EasyLoadingMaskType.black,
    );
  }

  static void showSuccess(String message) {
    EasyLoading.showSuccess(message,
        dismissOnTap: true, maskType: EasyLoadingMaskType.black);
  }

  static void dismissLoader() {
    EasyLoading.dismiss();
  }

  static void showLoader() {
    EasyLoading.show(status: 'Loading...', maskType: EasyLoadingMaskType.black);
  }
}
