import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<bool> alertExitApp() async {
  bool exit = false;

  await Get.defaultDialog(
    title: "Exit",
    middleText: "Are you sure you want to exit the app?",
    actions: [
      ElevatedButton(
        onPressed: () {
          exit = false;
          Get.back();
        },
        child: Text("No"),
      ),
      ElevatedButton(
        onPressed: () {
          exit = true;
          Get.back();
        },
        child: Text("Yes"),
      ),
    ],
  );

  return exit;
}