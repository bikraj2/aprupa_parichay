import 'package:flutter/material.dart';

class Tag extends StatelessWidget {
  Tag({super.key, required this.name, this.textColor = Colors.white});
  String name;
  Color textColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 11, vertical: 8),
      margin: EdgeInsets.all(2),
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 211, 207, 246),
          borderRadius: BorderRadius.circular(7)),
      child: Row(children: [
        CircleAvatar(
          backgroundColor: Colors.white,
          radius: 3,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          name,
          style: TextStyle(
              color: textColor, fontSize: 16, fontWeight: FontWeight.w500),
        )
      ]),
    );
  }
}
