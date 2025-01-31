import 'package:flutter/material.dart';

class CustomTextBodyW extends StatelessWidget {
  final String text;
  const CustomTextBodyW({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    text,
                    textAlign: TextAlign.center,
                  ));
  }
}