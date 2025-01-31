import 'package:flutter/material.dart';

class CustomTextTitleW extends StatelessWidget {
  final String text;
  const CustomTextTitleW({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
                text,
                style: Theme.of(context).textTheme.headlineLarge,
                textAlign: TextAlign.center,
              );
  }
}