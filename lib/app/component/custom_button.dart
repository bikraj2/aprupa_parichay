// ignore_for_file: override_on_non_overriding_member

import 'package:aprupa_parichay/global_variables.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {super.key,
      this.text = "Add to Cart",
      required this.width,
      this.backgroundColor = Colors.blue,
      this.textColor = Colors.black,
      this.rounded = 12,
      this.borderWidth = 0,
      this.borderColor = Colors.transparent,
      required this.onTap});
  double width;
  Color backgroundColor;
  Color textColor;
  double rounded;
  String text;
  VoidCallback onTap;
  double borderWidth;
  Color borderColor;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(vertical: 10),
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(rounded),
            border: Border.all(width: borderWidth, color: borderColor),
            color: backgroundColor,
          ),
          child: Text(
            text,
            style: TextStyle(
                color: textColor, fontSize: 15, fontWeight: FontWeight.w500),
          )),
    );
  }
}
