import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoping/core/constans/routes.dart';

abstract class ForgetPasswordController extends GetxController{

  checkEmail();
// getVerfiyCode();

}
class ForgetPasswordControllerImpl extends ForgetPasswordController{

  late TextEditingController email;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();



  @override
  checkEmail() {
    var  formdata = formKey.currentState;
    if(formdata!.validate()){
      print("valid");
      Get.toNamed(AppRoute.verfiyCode);


    }else{
      print("not valid");

    }
  }

//   @override
//   getVerfiyCode() {
// Get.toNamed(AppRoute.verfiyCode);
//   }




  @override
  void onInit() {

    email = TextEditingController();


    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();

    super.dispose();
  }

}
