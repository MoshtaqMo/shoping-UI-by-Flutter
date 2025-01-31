import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoping/core/constans/routes.dart';

abstract class LogInController extends GetxController {
  login();
  getSignUp();
  getFogetPassword();
}

class LogInControllerImpl extends LogInController {
  late TextEditingController email;
  late TextEditingController password;
  bool isshowpassword = true;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  showPassword() {
    isshowpassword = isshowpassword == true ? false : true;
    update();
  }

  @override
  login() {
    var formdata = formKey.currentState;
    if (formdata!.validate()) {
      print("valid");
    } else {
      print("not valid");
    }
  }

  @override
  getSignUp() {
    Get.offNamed(AppRoute.signup);
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  getFogetPassword() {
    Get.toNamed(AppRoute.forgotPassword);
  }
}
