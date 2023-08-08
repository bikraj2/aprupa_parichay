import 'package:aprupa_parichay/app/constants/hex_colors.dart';
import 'package:aprupa_parichay/global_variables.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget filterByTag(BuildContext context, String img, String name) {
  return Container(
    margin: const EdgeInsets.all(10),
    child: Stack(
      alignment: Alignment.bottomCenter,
      children: [
        SvgPicture.asset("assets/container.svg"),
        Positioned(bottom: 60, left: 40, child: Image.asset(img)),
        Center(
            child: Container(
          margin: EdgeInsets.only(bottom: 10),
          child: Text(
            name,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
          ),
        ))
      ],
    ),
  );
}
