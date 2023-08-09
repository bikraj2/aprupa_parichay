// ignore_for_file: prefer_const_constructors

import 'package:aprupa_parichay/app/component/custom_button.dart';
import 'package:aprupa_parichay/app/component/spaces.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FollowerCard extends StatefulWidget {
  FollowerCard(
      {super.key,
      required this.img,
      required this.title,
      required this.subtitle,
      required this.isSvg});
  String img;
  String title;
  String subtitle;
  bool isSvg;
  @override
  State<FollowerCard> createState() => _FollowerCardState();
}

class _FollowerCardState extends State<FollowerCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              widget.isSvg
                  ? SvgPicture.asset(widget.img, width: 40)
                  : Image.asset(widget.img, width: 40),
              horizontalSapce(30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  verticalSpace(5),
                  Text(widget.subtitle)
                ],
              ),
            ],
          ),
          CustomButton(
            width: 100,
            onTap: () {},
            text: "Unfollow",
            backgroundColor: Colors.white,
            borderColor: Colors.black,
            borderWidth: 0.4,
            rounded: 8,
          )
        ],
      ),
    );
  }
}
