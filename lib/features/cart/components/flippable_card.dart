// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_string_interpolations

import 'package:aprupa_parichay/app/component/spaces.dart';
import 'package:aprupa_parichay/app/constants/colors.dart';
import 'package:flutter/material.dart';

// Master Card Starts with 2 or 5
// Visa Card Starts with a 4

class FlippableCard extends StatefulWidget {
  FlippableCard(
      {super.key,
      this.cardNumber = "****************",
      this.name = "NAME",
      String expirationDate = "MM/YY"});
  String cardNumber;
  String name = "NAME";
  String expirationDate = "MM/YY";
  @override
  State<FlippableCard> createState() => _FlippableCardState();
}

class _FlippableCardState extends State<FlippableCard> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: frontCard(context, !(widget.cardNumber.substring(1, 1) == "4"),
            int.parse(widget.cardNumber)));
  }
}

Widget noInfoCard(BuildContext context) {
  return Container(
    height: 135,
    width: 215,
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
        color: Colors.grey.shade200, borderRadius: BorderRadius.circular(12)),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(
          children: [
            Text(
              "****",
              style: TextStyle(fontSize: 19, color: Colors.black87),
            ),
            horizontalSapce(4),
            Text(
              "****",
              style: TextStyle(fontSize: 19, color: Colors.black87),
            ),
            horizontalSapce(4),
            Text(
              "****",
              style: TextStyle(fontSize: 19, color: Colors.black87),
            ),
            horizontalSapce(4),
            Text(
              "****",
              style: TextStyle(fontSize: 19, color: Colors.black87),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "NAME",
              style: TextStyle(
                  fontSize: 12,
                  color: Colors.black38,
                  fontWeight: FontWeight.w300),
            ),
            Text(
              "MM/YY",
              style: TextStyle(
                  fontSize: 12,
                  color: Colors.black38,
                  fontWeight: FontWeight.w300),
            )
          ],
        )
      ],
    ),
  );
}

Widget frontCard(BuildContext context, bool isVisa, int cardNumber,
    {String name = "Name", String expirationDate = "MM/YY"}) {
  return Container(
    height: 165,
    width: 235,
    padding: EdgeInsets.all(15),
    decoration: BoxDecoration(
        color: isVisa ? primarColor.shade50 : yellowAccent.shade50,
        borderRadius: BorderRadius.circular(12)),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset("assets/logos/${isVisa ? "visa" : "master_card"}.png"),
            Text(
              "${isVisa ? "Visa" : "MasterCard"}",
              style: TextStyle(
                  fontWeight: FontWeight.w300,
                  color: Colors.black45,
                  letterSpacing: 0.6),
            ),
          ],
        ),
        Column(
          children: [
            Row(
              children: [
                Text(
                  "${intToString(cardNumber, 0, 4)}",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                horizontalSapce(5),
                Text(
                  "${intToString(cardNumber, 4, 8)}",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                horizontalSapce(5),
                Text(
                  "${intToString(cardNumber, 8, 12)}",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                horizontalSapce(5),
                Text(
                  "${intToString(cardNumber, 12, 16)}",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
            verticalSpace(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  name,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
                Text(
                  expirationDate,
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.black38,
                      fontWeight: FontWeight.w300),
                )
              ],
            )
          ],
        )
      ],
    ),
  );
}

Widget backCard(
  BuildContext context,
  bool isVisa,
) {
  return Container(
      padding: EdgeInsets.only(top: 30, bottom: 10),
      height: 165,
      width: 235,
      decoration: BoxDecoration(
          color: isVisa ? primarColor.shade50 : yellowAccent.shade50,
          borderRadius: BorderRadius.circular(12)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            height: 40,
            color: primarColor,
          ),
          Text(
            "CVV       ",
            style: TextStyle(fontWeight: FontWeight.w600),
          )
        ],
      ));
}

String intToString(int val, int start, int end) {
  return val.toString().substring(start, end);
}
