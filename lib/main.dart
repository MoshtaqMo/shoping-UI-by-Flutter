import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoping/binding.dart';
import 'package:shoping/core/localization/changelocal.dart';
import 'package:shoping/routes.dart';
import 'core/localization/translation.dart';
import 'core/services/services.dart';

void main() {
  runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    await initalServices();
    runApp(const MyApp());
  }, (error, stackTrace) {
    print("Caught Error: $error");
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.put(LocaleController());
    return GetMaterialApp(
      translations: MyTraslation(),
      debugShowCheckedModeBanner: false,
      title: "First App",
      locale: controller.language,
      theme: controller.appTheme,
      initialBinding: MyBinding(),
      getPages: routes,
    );
  }
}
