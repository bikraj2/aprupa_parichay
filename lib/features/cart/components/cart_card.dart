// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:aprupa_parichay/app/component/custom_button.dart';
import 'package:aprupa_parichay/app/component/spaces.dart';
import 'package:flutter/material.dart';

Widget cartCard(String name) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
    decoration: BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(12)),
    child: Stack(
      children: [
        Column(
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image(
                    width: 150,
                    height: 150,
                    fit: BoxFit.cover,
                    image: AssetImage("assets/3.jpg"),
                  ),
                ),
                horizontalSapce(20),
                Text(
                  name,
                  style: TextStyle(fontWeight: FontWeight.w200, fontSize: 20),
                )
              ],
            ),
            verticalSpace(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "S - 26 | Blue | x1 ",
                  style: TextStyle(
                    letterSpacing: 1,
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "\$34",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                )
              ],
            ),
            verticalSpace(30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                    child: Container(
                        alignment: Alignment.center,
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 60),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(width: 0.6, color: Colors.grey)),
                        child: Text(
                          "Edit",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ))),
                horizontalSapce(10),
                InkWell(
                    child: Container(
                        alignment: Alignment.center,
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(width: 0.6, color: Colors.grey)),
                        child: Text(
                          "Save for later",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ))),
              ],
            )
          ],
        ),
        Positioned(
            right: 10, child: ImageIcon(AssetImage("assets/logos/icon.png")))
      ],
    ),
  );
}
