import 'package:get/get.dart';
import 'package:shoping/core/constans/routes.dart';

abstract class VerifyCodeSiginUpController extends GetxController{

  checkCode();
  getSuccessSignUp();

}
class VerifyCodeSiginUpControllerImpl extends VerifyCodeSiginUpController{

  late String verifyCodeSiginUp;


  @override
  checkCode() {

  }

  @override
  getSuccessSignUp() {
    Get.toNamed(AppRoute.successSignUp);
  }




// @override
// void onInit() {



//   super.onInit();
// }



}
