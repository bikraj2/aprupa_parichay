// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:aprupa_parichay/app/component/spaces.dart';
import 'package:aprupa_parichay/global_variables.dart';
import 'package:flutter/material.dart';

class Credit_Card extends StatefulWidget {
  Credit_Card(
      {super.key,
      required this.isVisa,
      required this.cardNumber,
      required this.bgColor});
  bool isVisa;
  int cardNumber;
  Color bgColor; 
  @override
  State<Credit_Card> createState() => _Credit_CardState();
}

class _Credit_CardState extends State<Credit_Card> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        width: GlobalVariable.width / 2.6,
        height: 170,
        decoration: BoxDecoration(
            color: widget.bgColor, borderRadius: BorderRadius.circular(12)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
                "assets/logos/${widget.isVisa ? "visa" : "master_card"}.png"),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("${widget.isVisa ? "Visa" : "MasterCard"}"),
                verticalSpace(5),
                Text("****1567")
              ],
            )
          ],
        ));
  }
}
