
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoping/core/constans/routes.dart';
import 'package:shoping/core/localization/changelocal.dart';
import 'package:shoping/view/widget/language/custombuttonlang.dart';

class Language extends GetView<LocaleController> {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: const EdgeInsets.all(15),
            child:
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text("Choose Languages", style: Theme.of(context).textTheme.headlineLarge),
              const SizedBox(
                height: 20,
              ),
              CustomButtonLang(text: "English", onPressed: () {
                controller.changeLang("en");
                Get.offNamed(AppRoute.onBoarding);
              }),
              const SizedBox(
                height: 20,
              ),
              CustomButtonLang(text: "Arabic", onPressed: () {
                controller.changeLang("ar");
                Get.offNamed(AppRoute.onBoarding);
              }),
            ])));
  }
}
