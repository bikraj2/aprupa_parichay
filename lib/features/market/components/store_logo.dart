import 'package:aprupa_parichay/app/component/spaces.dart';
import 'package:aprupa_parichay/app/constants/colors.dart';
import 'package:flutter/material.dart';

Widget brandLogo(BuildContext context,
    {String img = "",
    String name = "",
    bool onSale = false,
    int disPercent = 0}) {
  return Column(
    mainAxisSize: MainAxisSize.max,
    children: [
      Container(
        height: 110,
        width: 110,
        decoration: BoxDecoration(
          border: Border.all(width: 2, color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(100),
          image: DecorationImage(
              fit: BoxFit.contain,
              image: AssetImage(
                "assets/stores/${img}",
              )),
        ),
      ),
      verticalSpace(7),
      Text(
        name.toUpperCase(),
        style: TextStyle(fontSize: 16),
      ),
      onSale
          ? Container(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              decoration: BoxDecoration(color: redAccent.shade50),
              child: Text(
                "${disPercent}\$ OFF",
                style: TextStyle(color: redAccent.shade600),
              ),
            )
          : verticalSpace(0)
    ],
  );
}
