// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:ui';

import 'package:aprupa_parichay/app/component/custom_icon.dart';
import 'package:aprupa_parichay/features/products/components/size.dart';
import 'package:flutter/material.dart';

import '../../../global_variables.dart';

class ProductDisplay extends StatefulWidget {
  const ProductDisplay({super.key});

  @override
  State<ProductDisplay> createState() => _ProductDisplayState();
}

class _ProductDisplayState extends State<ProductDisplay> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(right: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_outlined)),
                Row(
                  children: [
                    CustomIcon(
                      img: "assets/save-instagram.png",
                      width: 35,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.more_horiz_outlined)
                  ],
                ),
              ],
            ),
            Container(
                clipBehavior: Clip.hardEdge,
                margin: EdgeInsets.all(19),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(17)),
                child: Image.asset("assets/7.jpg")),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Product Name 1",
                    style: TextStyle(
                      color: Color(0xFF272728),
                      fontSize: 17,
                      fontFamily: 'HeyWow',
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.56,
                    ),
                  ),
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage("assets/huba.png"),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    width: GlobalVariable.width / 2 - 30,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        border:
                            Border.all(width: 1, color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(12)),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.redAccent,
                            radius: 7,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Red",
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.grey.shade600,
                                fontWeight: FontWeight.w500),
                          )
                        ]),
                  ),
                ),
                InkWell(
                  onTap: () {
                    showBottomSheet(
                        backgroundColor: Colors.transparent,
                        context: context,
                        builder: (context) {
                          return Size_info();
                        });
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    width: GlobalVariable.width / 2 - 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(width: 1, color: Colors.grey.shade300),
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Size",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.w500),
                          )
                        ]),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
