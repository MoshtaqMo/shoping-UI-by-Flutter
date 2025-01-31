import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:shoping/controller/auth/passwordc/verfiy_controller.dart';
import 'package:shoping/core/constans/color.dart';
import 'package:shoping/view/widget/auth/customtextbody.dart';
import 'package:shoping/view/widget/auth/customtexttitle.dart';

class VerifyCode extends StatelessWidget {
  const VerifyCode({super.key});
  @override
  Widget build(BuildContext context) {
    VerifyCodeControllerImpl controller = Get.put(VerifyCodeControllerImpl());
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Verify Code",
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                  color: AppColor.grey,
                ),
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          child: ListView(
            children: [
              CustomTextTitleW(text: "Check Code"),
              SizedBox(height: 20),
              CustomTextBodyW(
                text: '''Please enter the code sent to your email address.''',
              ),
              SizedBox(height: 30),

              OtpTextField(
        numberOfFields: 5,
        borderRadius: BorderRadius.circular(30),
        borderColor: Color(0xFF512DA8),
        //set to true to show as box or false to show as dash
        showFieldAsBox: true, 
        //runs when a code is typed in
        onCodeChanged: (String code) {
            //handle validation or checks here           
        },
        //runs when every textfield is filled
        onSubmit: (String verificationCode){
          controller.getResetPassword();
           
        }, // end onSubmit
    ),
              
            ],
          ),
        ));
  }
}
