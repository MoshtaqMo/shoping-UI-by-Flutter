import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoping/core/constans/routes.dart';

abstract class SignUpController extends GetxController{

  signUp();
  getSignIn();
}
class SignUpControllerImpl extends SignUpController{

  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController username;
  late TextEditingController phonenumber;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();



  @override
  signUp() {
    var  formdata = formKey.currentState;
    if(formdata!.validate()){
      print("valid");
      Get.offNamed(AppRoute.verifyCodeSignUp);


    }else{
      print("not valid");

    }
  }

  @override
  getSignIn() {
    Get.offNamed(AppRoute.login);
  }

  @override
  void onInit() {

    email = TextEditingController();
    password = TextEditingController();
    username = TextEditingController();
    phonenumber = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    username.dispose();
    phonenumber.dispose();
    super.dispose();
  }

}
