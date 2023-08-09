// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:aprupa_parichay/app/component/spaces.dart';
import 'package:aprupa_parichay/app/constants/colors.dart';
import 'package:flutter/material.dart';

Widget preferences(BuildContext context) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "My preferences",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        verticalSpace(20),
        PreferenceCard(
          title: "Main Department",
          subtitle: "Man",
          child: Text(
            "W",
            style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
          ),
        ),
        verticalSpace(20),
        PreferenceCard(
          title: "Size",
          subtitle: "26 - S",
          child: Text(
            "26",
            style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18),
          ),
        ),
        verticalSpace(20),
        PreferenceCard(
            title: "Favorite Color",
            subtitle: "Orange",
            child: CircleAvatar(
              radius: 10,
              backgroundColor: secondaryColor,
            ))
      ],
    ),
  );
}

class PreferenceCard extends StatelessWidget {
  PreferenceCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.child,
  });
  String title;
  String subtitle;
  Widget child;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                  fontWeight: FontWeight.w300,
                  letterSpacing: 0.7,
                  fontSize: 18),
            ),
            Text(
              subtitle,
              style: TextStyle(fontWeight: FontWeight.w500, letterSpacing: 0.7),
            )
          ],
        ),
        Container(
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.grey.shade400),
                borderRadius: BorderRadius.circular(9)),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: child)
      ],
    );
  }
}
