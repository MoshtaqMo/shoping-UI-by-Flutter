

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoping/core/constans/routes.dart';

abstract class ResetPasswordController extends GetxController{
  late TextEditingController password;
  late TextEditingController repassword;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  resetPassword();
// getSuccessResetPassword();

}
class ResetPasswordControllerImpl extends ResetPasswordController{

  late TextEditingController email;



  @override
  resetPassword() {
    var  formdata = formKey.currentState;
    if(formdata!.validate()){
      print("valid");

      Get.toNamed(AppRoute.successResetpassword);

    }else{
      print("not valid");

    }
  }

//   @override
//   getSuccessResetPassword() {
// Get.toNamed(AppRoute.successResetpassword);
//   }




  @override
  void onInit() {

    password = TextEditingController();
    repassword = TextEditingController();


    super.onInit();
  }

  @override
  void dispose() {
    password.dispose();
    repassword.dispose();

    super.dispose();
  }

}
