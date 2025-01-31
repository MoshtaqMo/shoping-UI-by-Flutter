import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoping/controller/auth/signup_controller.dart';
import 'package:shoping/core/constans/color.dart';
import 'package:shoping/core/functions/alertexit.dart';
import 'package:shoping/core/functions/validatorinput.dart';
import 'package:shoping/view/widget/auth/custombuttom.dart';
import 'package:shoping/view/widget/auth/customtextbody.dart';
import 'package:shoping/view/widget/auth/customtextformw.dart';
import 'package:shoping/view/widget/auth/customtexttitle.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Sign Up",
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                  color: AppColor.grey,
                ),
          ),
        ),
        body: GetBuilder<SignUpControllerImpl>(
            builder: (controller) => WillPopScope(
                  onWillPop: alertExitApp,
                  child: Form(
                    key: controller.formKey,
                    child: Container(
                      padding: EdgeInsets.all(20),
                      child: ListView(
                        children: [
                          CustomTextTitleW(text: "Welcome Back"),
                          SizedBox(height: 20),
                          CustomTextBodyW(
                            text:
                                '''Sign up with your email and password  or continue with social ''',
                          ),
                          SizedBox(height: 30),
                          CustomTextFormW(
                            valid: (val) {
                              return validinput(val!, 10, 60, "username");
                            },
                            hinttext: "Enter your username",
                            label: "User Name",
                            iconData: Icons.person_outline,
                            mycontroller: controller.username,
                            isNumber: false,
                          ),
                          SizedBox(height: 20),
                          CustomTextFormW(
                            valid: (val) {
                              return validinput(val!, 15, 50, "email");
                            },
                            hinttext: "Enter your email",
                            label: "Email",
                            iconData: Icons.email_outlined,
                            mycontroller: controller.email, isNumber: false,
                          ),
                          SizedBox(height: 20),
                          CustomTextFormW(
                            valid: (val) {
                              return validinput(val!, 11, 11, "phone");
                            },
                            hinttext: "Enter your phone number",
                            label: "Phone Number",
                            iconData: Icons.phone_outlined,
                            mycontroller: controller.phonenumber,
                            isNumber: true,
                          ),
                          SizedBox(height: 20),
                          CustomTextFormW(
                            valid: (val) {
                              return validinput(val!, 8, 20, "password");
                            },
                            hinttext: "Enter your password",
                            label: "Password",
                            iconData: Icons.lock_outlined,
                            mycontroller: controller.password,
                            isNumber: false,
                          ),
                          CustomButtonW(
                            text: "Sign Up",
                            onPressed: () {
                              controller.signUp();
                            },
                            color: AppColor.primartColor,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("You have an account?"),
                              TextButton(
                                  onPressed: () {
                                    controller.getSignIn();
                                  },
                                  child: Text(
                                    "Sign In",
                                    style: TextStyle(
                                        color: AppColor.primartColor,
                                        fontWeight: FontWeight.bold),
                                  ))
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                )));
  }
}
