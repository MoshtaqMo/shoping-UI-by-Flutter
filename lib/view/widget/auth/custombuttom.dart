import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomButtonW extends StatelessWidget {
  final String text;
  void Function()? onPressed;
  final Color  color;
  CustomButtonW({super.key, required this.text, required this.onPressed, required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: MaterialButton(
        padding: EdgeInsets.symmetric(vertical: 13),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        onPressed: onPressed,
        color: color,
        textColor: Colors.white,
        child: Text(text),
      ),
    );
  }
}
