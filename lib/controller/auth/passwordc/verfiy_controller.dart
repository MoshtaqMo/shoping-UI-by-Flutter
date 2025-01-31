import 'package:get/get.dart';
import 'package:shoping/core/constans/routes.dart';

abstract class VerifyCodeController extends GetxController{

  checkCode();
  getResetPassword();

}
class VerifyCodeControllerImpl extends VerifyCodeController{

  late String verifycode;


  @override
  checkCode() {

  }

  @override
  getResetPassword() {
    Get.toNamed(AppRoute.resetPassword);
  }




// @override
// void onInit() {



//   super.onInit();
// }



}
