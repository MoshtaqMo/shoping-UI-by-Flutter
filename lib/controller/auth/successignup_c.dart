import 'package:get/get.dart';
import 'package:shoping/core/constans/routes.dart';

abstract class SuccessSignUpController extends GetxController {


  getPageLogin();
}

class SuccessSignUpControllerImpl extends SuccessSignUpController {
  @override
  getPageLogin() {
    Get.offNamed(AppRoute.login);
  }
}