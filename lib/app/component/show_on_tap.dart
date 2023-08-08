// ignore_for_file: avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:math';

import 'package:aprupa_parichay/app/constants/styles.dart';
import 'package:flutter/material.dart';

class ShowOnTap extends StatefulWidget {
  ShowOnTap({
    super.key,
    required this.child,
    required this.title,
    required this.icon,
  });
  Widget child;
  String title;
  Icon icon;

  @override
  State<ShowOnTap> createState() => _ShowOnTapState();
}

class _ShowOnTapState extends State<ShowOnTap> {
  double angle = 0;
  bool visible = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            splashFactory: NoSplash.splashFactory,
            onTap: () {
              setState(() {
                visible = !visible;
                angle = angle == 0 ? 180 : 0;
              });
            },
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.title,
                    style: TextStyle(
                        fontFamily: "HeyWow",
                        fontSize: 16,
                        fontWeight: FontWeight.w300),
                  ),
                  Transform.rotate(angle: pi / 180 * angle, child: widget.icon),
                ]),
          ),
          SizedBox(
            height: 10,
          ),
          Visibility(visible: visible, child: widget.child)
        ],
      ),
    );
  }
}
