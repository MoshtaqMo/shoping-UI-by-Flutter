import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoping/core/constans/apptheme.dart';
import 'package:shoping/core/services/services.dart';

class LocaleController extends GetxController{
  Locale? language;

  MyServices myServices = Get.find();

  ThemeData appTheme = themeEnglish;
  changeLang(String langcode){
    Locale locale = Locale(langcode);
    myServices.sharedPreferences.setString("lang", langcode);
    appTheme = langcode == "ar" ? themeArabic : themeEnglish;
    Get.changeTheme(appTheme);
    Get.updateLocale(locale);
  }

  @override
  void onInit(){

    String? sharedPrefLang = myServices.sharedPreferences.getString("lang");

    if(sharedPrefLang=='ar'){

      language = Locale("ar");
      appTheme = themeArabic;
    }else if(sharedPrefLang =="en"){
      language = Locale("en");
      appTheme = themeEnglish;
    }else{
      language = Locale(Get.deviceLocale!.languageCode);
      appTheme = themeEnglish;
    }
    super.onInit();
  }

}