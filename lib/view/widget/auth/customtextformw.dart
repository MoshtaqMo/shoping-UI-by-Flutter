import 'package:flutter/material.dart';

class CustomTextFormW extends StatelessWidget {
  final String hinttext;
  final String label;
  final IconData iconData;
  final TextEditingController mycontroller;
  final String? Function(String?) valid;
  final bool isNumber;
  final bool? ispassword;
  final void Function()? onTap;
  const CustomTextFormW({
    super.key,
    required this.hinttext,
    required this.label,
    required this.iconData,
    required this.mycontroller, 
    required this.valid, 
    required this.isNumber, 
     this.ispassword,
      this.onTap, 
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: isNumber ? TextInputType.numberWithOptions(decimal: true) : TextInputType.text,
      validator: valid,
      controller: mycontroller,
      obscureText: ispassword == null || ispassword==false ? false:true,
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always, 
        contentPadding: EdgeInsets.symmetric(
          horizontal: 30,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        hintText: hinttext,
        label: Container(margin: EdgeInsets.only(left: 15), child: Text(label)),
        prefixIcon: InkWell(
          onTap:onTap ,
          child: Icon(iconData)),
      ),
    );
  }
}
