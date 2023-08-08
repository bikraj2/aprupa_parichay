// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';

class Size_info extends StatelessWidget {
  const Size_info({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
      child: DraggableScrollableSheet(
          snap: true,
          expand: true,
          initialChildSize: 0.6,
          snapSizes: [0.5, 0.9],
          builder: (context, scroll) {
            return Container(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              child: ListView(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: Text(
                      "Size",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizePart(
                    name: "XXS",
                    length: "22",
                  ),
                  SizePart(
                    name: "XS",
                    length: "24",
                  ),
                  SizePart(
                    name: "S",
                    length: "26",
                  ),
                  SizePart(
                    name: "M",
                    length: "28",
                  ),
                  SizePart(
                    name: "L",
                    length: "30",
                  ),
                  SizePart(
                    name: "Xl",
                    length: "34",
                  ),
                  SizePart(
                    name: "Xl",
                    length: "34",
                  ),
                  SizePart(
                    name: "XS",
                    length: "24",
                  ),
                  SizePart(
                    name: "S",
                    length: "26",
                  ),
                  SizePart(
                    name: "M",
                    length: "28",
                  ),
                  SizePart(
                    name: "L",
                    length: "30",
                  ),
                  SizePart(
                    name: "Xl",
                    length: "34",
                  ),
                  SizePart(
                    name: "Xl",
                    length: "34",
                  ),
                ],
              ),
            );
          }),
    );
  }
}

class SizePart extends StatelessWidget {
  SizePart({super.key, required this.length, required this.name});
  String name;
  String length;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15),
      child: Row(
        children: [
          Text(
            length,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            name,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
          ),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
