import 'package:flutter/material.dart';
import 'package:shoping/controller/auth/passwordc/sucesresetpassword_c.dart';
import 'package:shoping/core/constans/color.dart';
import 'package:shoping/view/widget/auth/custombuttom.dart';

class SuccessResetpassword extends StatelessWidget {
  const SuccessResetpassword({super.key});

  @override
  Widget build(BuildContext context) {
    SuccessResetPasswordControllerImpl controller = SuccessResetPasswordControllerImpl();
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Success Reset Password",
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                  color: AppColor.grey,
                ),
              
          ),
        ),
body: Container(
  padding: EdgeInsets.all(20),
  child: Column(
    children: [
      Center(child: Icon(Icons.check_circle_outline, size: 200, color:Colors.red,)),
      Spacer(),
      // ignore: sized_box_for_whitespace
      Container(
        width: double.infinity,
        child: CustomButtonW(text: "Go to login", onPressed: (){
          controller.getPageLogin();
        }, color: Colors.red,)),
        SizedBox(height: 20),
    ],
  ),
),
    );
  }
}