import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoping/controller/auth/passwordc/resetpassword_controller.dart';
import 'package:shoping/core/constans/color.dart';
import 'package:shoping/core/functions/validatorinput.dart';
import 'package:shoping/view/widget/auth/custombuttom.dart';
import 'package:shoping/view/widget/auth/customtextformw.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});
  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImpl controller =
        Get.put(ResetPasswordControllerImpl());
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Reset Password",
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                  color: AppColor.grey,
                ),
          ),
        ),
        body: Form(
          key: controller.formKey,
          child: Container(
            padding: EdgeInsets.all(20),
            child: ListView(
              children: [
                CustomTextFormW(
                  valid: (val) {
                    return validinput(val!, 8, 20, "password");
                  },
                  hinttext: "Enter your password",
                  label: "New Password",
                  iconData: Icons.email_outlined,
                  mycontroller: controller.password,
                  isNumber: false,
                ),
                SizedBox(height: 30),
                CustomTextFormW(
                  valid: (val) {
                    return validinput(val!, 8, 20, "password");
                  },
                  hinttext: "Re enter your password",
                  label: "New Password",
                  iconData: Icons.email_outlined,
                  mycontroller: controller.password,
                  isNumber: false,
                ),
                CustomButtonW(
                  text: "Save",
                  onPressed: () {
                    controller.resetPassword();
                  },
                  color: AppColor.primartColor,
                ),
              ],
            ),
          ),
        ));
  }
}
