import 'package:aprupa_parichay/global_variables.dart';
import 'package:flutter/material.dart';

Widget vertical_Line(BuildContext context, double width) {
  return Container(
    height: GlobalVariable.height,
    width: width,
  );
}

Widget horizontal_line(BuildContext context, double height) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 8),
    color: Colors.grey.shade300,
    height: height,
    width: GlobalVariable.width,
  );
}
