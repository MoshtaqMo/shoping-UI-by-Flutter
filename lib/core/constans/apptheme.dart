import 'package:flutter/material.dart';
import 'package:shoping/core/constans/color.dart';

ThemeData themeEnglish = ThemeData(
  fontFamily: "PlayfairDisplay",
  textTheme: const TextTheme(
    headlineLarge: TextStyle(
        fontSize: 20, fontWeight: FontWeight.bold, color: AppColor.black),
    bodyLarge: TextStyle(height: 1.4, color: AppColor.grey, fontSize: 16),
    headlineMedium: TextStyle(
        fontSize: 26, fontWeight: FontWeight.bold, color: AppColor.black),
    bodyMedium: TextStyle(height: 1.4, color: AppColor.grey, fontSize: 12),
  ),
  primarySwatch: Colors.blue,
);

ThemeData themeArabic = ThemeData(
  fontFamily: "Cairo",
  textTheme: const TextTheme(
    headlineLarge: TextStyle(
        fontSize: 20, fontWeight: FontWeight.bold, color: AppColor.black),
    bodyLarge: TextStyle(height: 1.4, color: AppColor.grey, fontSize: 16),
    headlineMedium: TextStyle(
        fontSize: 26, fontWeight: FontWeight.bold, color: AppColor.black),
    bodyMedium: TextStyle(height: 1.4, color: AppColor.grey, fontSize: 12),
  ),
  primarySwatch: Colors.blue,
);
