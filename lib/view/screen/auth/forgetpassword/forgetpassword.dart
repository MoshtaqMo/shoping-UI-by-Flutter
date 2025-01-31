import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoping/controller/auth/passwordc/forgetpassword_controller.dart';
import 'package:shoping/core/constans/color.dart';
import 'package:shoping/core/functions/validatorinput.dart';
import 'package:shoping/view/widget/auth/custombuttom.dart';
import 'package:shoping/view/widget/auth/customtextbody.dart';
import 'package:shoping/view/widget/auth/customtextformw.dart';
import 'package:shoping/view/widget/auth/customtexttitle.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});
  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImpl controller = Get.put(ForgetPasswordControllerImpl());
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Forget Password",
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
                
                CustomTextTitleW(text: "Check Your Email"),
                SizedBox(height: 20),
                CustomTextBodyW(
                  text:
                      '''Please enter your email address. You will receive a link to create a new password via email.''',
                ),
                SizedBox(height: 30),
                CustomTextFormW(
                  valid: (val) {
                    return validinput(val!, 15, 50, "email");
                  
                    
                  },
                  hinttext: "Enter your email",
                  label: "Email",
                  iconData: Icons.email_outlined,
                  mycontroller: controller.email, isNumber: false,
                ),
                
                
                CustomButtonW(text: "Check", onPressed: () {
                  controller.checkEmail();
                }, color: AppColor.primartColor,),
               
              ],
            ),
          ),
        ));
  }
}

