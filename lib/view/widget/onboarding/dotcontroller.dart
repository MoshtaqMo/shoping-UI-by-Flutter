import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoping/controller/onboarding_controller.dart';
import 'package:shoping/core/constans/color.dart';

import '../../../data/datasurce/static.dart';

class CustomDotContrlollerOnBoarding extends StatelessWidget {
  const CustomDotContrlollerOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImpl>(
      builder: (controller) =>  Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
                onBoardingList.length,
                (i) => InkWell(
                  onTap: () {
                    if (i == 3) {
                      i==onBoardingList.length - 1;
                      controller.next();
                    } 
                    else if(i ==2 ) {
                      i==onBoardingList.length - 2;
                      controller.next();
                    }
                    else if(i == 1) {
                      i==onBoardingList.length - 3;
                      controller.next();
                    }
                    else {
                      controller.currentIndex = i;
                    }
          // controller.next();
        },
                  child: AnimatedContainer(
                        duration: const Duration(seconds: 1),
                        height: controller.currentIndex == i ? 12 : 8,
                        width: controller.currentIndex == i ? 12 : 8,
                        margin: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: controller.currentIndex == i
                                ? Colors.red
                                : AppColor.grey,
                            shape: BoxShape.circle),
                      ),
                )),
          ],
        ),
      
    );
  }
}


// onTap: () {
//           controller.next();
//         },