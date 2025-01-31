

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoping/controller/onboarding_controller.dart';

class CustomButtonOnBoarding extends GetView<OnBoardingControllerImpl> {
  final String? text;
  final Color? color;
  final void Function()? onPressed;
  const CustomButtonOnBoarding( {super.key, required this.text,required this.color,required this.onPressed,});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 1),
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15)),
      child: MaterialButton(
        onPressed: onPressed,
        child: Text(
          "$text",
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
    );
  }
}
