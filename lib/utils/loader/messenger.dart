import "package:flutter/material.dart";

/// The base interface for a messenger that can show errors/messages.
abstract class Messenger {
  final BuildContext context;

  Messenger(this.context);

  /// Shows an error message.
  void showError(Object error) {
    if (error is String) {
      showErrorMessage(error);
    } else {
      showErrorMessage(error.toString());
    }
  }

  void showErrorMessage(String message);

  /// Shows a success message.
  void showSuccess(String message);

  void showLoader();

  void dismissLoader();
}
