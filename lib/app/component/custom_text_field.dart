import 'package:flutter/material.dart';

Widget CustomTextField(BuildContext context, double width, double height,
    String hintText, Icon ion, VoidCallback _function) {
  return Container(
      height: height,
      width: width,
      child: TextField(
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(
              fontWeight: FontWeight.w300,
            ),
            suffixIcon: ion,
            fillColor: Colors.grey.shade200,
            filled: true,
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(12))),
      ));
}
