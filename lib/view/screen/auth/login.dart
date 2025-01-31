import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoping/controller/auth/login_controller.dart';
import 'package:shoping/core/constans/color.dart';
import 'package:shoping/core/functions/alertexit.dart';
import 'package:shoping/core/functions/validatorinput.dart';
import 'package:shoping/view/widget/auth/custombuttom.dart';
import 'package:shoping/view/widget/auth/customtextbody.dart';
import 'package:shoping/view/widget/auth/customtextformw.dart';
import 'package:shoping/view/widget/auth/customtexttitle.dart';
import 'package:shoping/view/widget/auth/logo.dart';

class Login extends StatelessWidget {
  const Login({super.key});
  @override
  Widget build(BuildContext context) {
    LogInControllerImpl controller = Get.put(LogInControllerImpl());
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Sign In",
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                  color: AppColor.grey,
                ),
          ),
        ),
        body: WillPopScope(
          onWillPop: alertExitApp,
          child: Container(
            padding: EdgeInsets.all(20),
            child: Form(
              key: controller.formKey,
              child: ListView(
                children: [
                  LogoF(),
                  CustomTextTitleW(text: "Welcome Back"),
                  SizedBox(height: 20),
                  CustomTextBodyW(
                    text:
                        '''Sign in with your email and password  or continue with social ''',
                  ),
                  SizedBox(height: 30),
                  CustomTextFormW(
                    valid: (val) {
                      return validinput(val!, 15, 100, "email");
                    },
                    hinttext: "Enter your email",
                    label: "Email",
                    iconData: Icons.email_outlined,
                    mycontroller: controller.email,
                    isNumber: false,
                  ),
                  SizedBox(height: 20),
                  GetBuilder<LogInControllerImpl>(
                      builder: (controller) => CustomTextFormW(
                            onTap: () {
                              controller.showPassword();
                            },
                            ispassword: controller.isshowpassword,
                            valid: (val) {
                              return validinput(val!, 8, 30, "password");
                            },
                            hinttext: "Enter your password",
                            label: "Password",
                            iconData: Icons.lock_outlined,
                            mycontroller: controller.password,
                            isNumber: false,
                          )),
                  Container(
                    padding: EdgeInsets.only(left: 250,right: 10),
                    child: InkWell(
                      
                      onTap: () {
                        controller.getFogetPassword();
                      },
                      child: Text(
                        "Forget Password",
                        style: TextStyle(color: AppColor.black, fontSize: 14),
                        textAlign: TextAlign.end,
                      ),
                    ),
                  ),
                  Spacer(),
                  CustomButtonW(
                    text: "Sign In",
                    onPressed: () {
                      controller.login();
                    },
                    color: AppColor.primartColor,
                  ),
                  SizedBox(height: 20),
                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account?"),
                      TextButton(
                          onPressed: () {
                            controller.getSignUp();
                          },
                          child: Text(
                            "Sign Up",
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
        ));
  }
}
