import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoping/controller/auth/successignup_c.dart';
import 'package:shoping/core/constans/color.dart';
import 'package:shoping/view/widget/auth/custombuttom.dart';

class SuccessSiginup extends StatelessWidget {
  const SuccessSiginup({super.key});

  @override
  Widget build(BuildContext context) {
    SuccessSignUpControllerImpl controller = Get.put(SuccessSignUpControllerImpl());
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Success Sign Up",
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
        child: CustomButtonW(text: "text", onPressed: (){
          controller.getPageLogin();
        }, color: Colors.red,)),
        SizedBox(height: 20),
    ],
  ),
),
    );
  }
}