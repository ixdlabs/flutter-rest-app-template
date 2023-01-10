import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_rest_app_template/utils/loader/messenger.dart';

class Loader extends Messenger {
  Loader(super.context);

  @override
  void showErrorMessage(String message) {
    EasyLoading.showError(
      message,
      dismissOnTap: true,
      duration: const Duration(seconds: 5),
      maskType: EasyLoadingMaskType.black,
    );
  }

  @override
  void showSuccess(String message) {
    EasyLoading.showSuccess(message,
        dismissOnTap: true, maskType: EasyLoadingMaskType.black);
  }

  @override
  void dismissLoader() {
    EasyLoading.dismiss();
  }

  @override
  void showLoader() {
    EasyLoading.show(status: 'Loading...', maskType: EasyLoadingMaskType.black);
  }
}
