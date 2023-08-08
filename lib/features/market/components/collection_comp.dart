// ignore_for_file: prefer_const_constructors

import 'package:aprupa_parichay/global_variables.dart';
import 'package:flutter/material.dart';

Widget CollectionCard(
    BuildContext context, Color textColor, Color bgColor, String text) {
  return Container(
    margin: EdgeInsets.all(10),
    alignment: Alignment.bottomLeft,
    padding: EdgeInsets.all(15),
    width: GlobalVariable.width / 2 - 40,
    height: GlobalVariable.height / 9,
    decoration:
        BoxDecoration(color: bgColor, borderRadius: BorderRadius.circular(12)),
    child: Text(
      text,
      style: TextStyle(
          color: textColor, fontWeight: FontWeight.w300, fontSize: 16),
    ),
  );
}

Widget CollectionList(
    BuildContext context, String img, String name, String tag) {
  return Container(
      child: Row(
    children: [
      ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image(
            width: 60,
            height: 60,
            fit: BoxFit.cover,
            image: AssetImage(img),
          )),
      SizedBox(
        width: 10,
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: TextStyle(
                fontWeight: FontWeight.w400, fontSize: 20, letterSpacing: 0.4),
          ),
          Text(
            tag,
            style: TextStyle(letterSpacing: 1),
          ),
        ],
      )
    ],
  ));
}
