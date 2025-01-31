import 'package:flutter/material.dart';
import 'package:shoping/core/constans/images.dart';

class LogoF extends StatelessWidget {
  const LogoF({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(AppImage.logo, height: 200, );
  }
}