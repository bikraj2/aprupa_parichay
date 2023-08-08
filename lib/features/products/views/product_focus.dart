// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:aprupa_parichay/app/component/custom_icon.dart';
import 'package:flutter/material.dart';

class ProductFocus extends StatefulWidget {
  ProductFocus({super.key});

  @override
  State<ProductFocus> createState() => _ProductFocusState();
}

class _ProductFocusState extends State<ProductFocus> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(""),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              clipBehavior: Clip.hardEdge,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(12)),
              child: Image(
                image: const AssetImage(
                  "assets/4.jpg",
                ),
                width: MediaQuery.of(context).size.width / 2,
              ),
            ),
            const SizedBox(
              width: 40,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomIcon(img: "assets/save-instagram.png"),
                  CustomIcon(img: "assets/share.png"),
                  CustomIcon(img: "assets/tick.png"),
                  CustomIcon(img: "assets/remove.png"),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          width: 40 + MediaQuery.of(context).size.width - 170 - 10,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(17)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Huba Official",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    letterSpacing: .7,
                    fontSize: 17),
              ),
              Image(
                image: AssetImage("assets/huba.png"),
                width: 80,
              )
            ],
          ),
        ),
      ],
    );
  }
}
