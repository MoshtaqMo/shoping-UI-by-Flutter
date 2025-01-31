import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoping/core/constans/routes.dart';
import 'package:shoping/core/services/services.dart';
import 'package:shoping/data/datasurce/static.dart';

abstract class OnBoardingController extends GetxController {
  late PageController pageController;
  int currentIndex = 0;
  MyServices myServices = Get.find();

  next();
  onPageChanged(int i);
}

class OnBoardingControllerImpl extends OnBoardingController {
  @override
  next() {
    currentIndex++;

    if (currentIndex > onBoardingList.length - 1) {
      myServices.sharedPreferences.setString("onboarding", "1");
      Get.offAllNamed(AppRoute.login);
    } else {
      pageController.animateToPage(
        currentIndex,
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  onPageChanged(int i) {
    currentIndex = i;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}
