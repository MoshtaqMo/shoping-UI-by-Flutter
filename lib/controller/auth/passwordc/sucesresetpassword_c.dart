import 'package:get/get.dart';
import 'package:shoping/core/constans/routes.dart';

abstract class SuccessResetPasswordController extends GetxController {
  getPageLogin();
}

class SuccessResetPasswordControllerImpl
    extends SuccessResetPasswordController {
  @override
  getPageLogin() {
    Get.offNamed(AppRoute.login);
  }
}
