import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoping/controller/onboarding_controller.dart';
import 'package:shoping/core/constans/color.dart';
import 'package:shoping/core/constans/routes.dart';
import 'package:shoping/view/widget/onboarding/custombuttonlang.dart';
import 'package:shoping/view/widget/onboarding/customslider.dart';
import 'package:shoping/view/widget/onboarding/dotcontroller.dart';

import '../../core/services/services.dart';

class OnBoarding extends GetView<OnBoardingControllerImpl> {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    MyServices myServices = Get.find();
    Get.put(OnBoardingControllerImpl());
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          const Expanded(
            flex: 3,
            child: CustomSliderOnBoarding(),
          ),
          Expanded(
              flex: 1,
              child: Column(
                children: [
                  const CustomDotContrlollerOnBoarding(),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomButtonOnBoarding(
                    text: "Cuntinue",
                    color: AppColor.primartColor,
                    onPressed: () {
                      controller.next();
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomButtonOnBoarding(
                    text: "skib",
                    color: Colors.green,
                    onPressed: () {
                      myServices.sharedPreferences.setString("onboarding", "1");

                      Get.offNamed(AppRoute.login);
                    },
                  )
                  // Container(
                  //   padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 1),
                  //   child: MaterialButton(onPressed: (){},child: Text("Skip",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),),)
                ],
              ))
        ],
      )),
    );
  }
}
