import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoping/controller/onboarding_controller.dart';
import 'package:shoping/core/constans/color.dart';

import '../../../data/datasurce/static.dart';

class CustomSliderOnBoarding extends GetView<OnBoardingControllerImpl> {
  const CustomSliderOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: controller.pageController,
        onPageChanged: ((val) {
          controller.onPageChanged(val);
        }),
        itemCount: onBoardingList.length,
        itemBuilder: (context, i) {
          return Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Text(
                  onBoardingList[i].title!,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: AppColor.black),
                ),
                const SizedBox(
                  height: 80,
                ),
                Image.asset(onBoardingList[i].image!),
                const SizedBox(
                  height: 50,
                ),
                Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text(
                      onBoardingList[i].body!,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          height: 1.4, color: AppColor.grey, fontSize: 16),
                    )),
              ],
            ),
          );
        });
  }
}
