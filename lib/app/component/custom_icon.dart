import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  CustomIcon(
      {super.key,
      required this.img,
      this.color = Colors.black,
      this.width = 45});
  final String img;
  double width;
  Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(8)),
      width: width,
      child: Image.asset(
        img,
        color: Colors.black,
      ),
    );
  }
}
