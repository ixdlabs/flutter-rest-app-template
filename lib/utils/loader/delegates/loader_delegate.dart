import 'package:flutter/cupertino.dart';

abstract class LoaderDelegate {
  TransitionBuilder buildOverlay();

  void showError(Object error) {
    if (error is String) {
      showErrorMessage(error);
    } else {
      showErrorMessage(error.toString());
    }
  }

  void showErrorMessage(String message);

  void showSuccess(String message);

  void showLoader();

  void dismissLoader();
}
