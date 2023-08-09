// ignore_for_file: prefer_const_constructors

import 'package:aprupa_parichay/app/component/custom_text_field.dart';
import 'package:aprupa_parichay/app/component/spaces.dart';
import 'package:aprupa_parichay/features/profile/components/drawers_card.dart';
import 'package:aprupa_parichay/features/profile/views/profile_info.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return ProfileInfo();
                    }));
                  },
                  child: Container(
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(120)),
                      child: Image.asset(
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                          "assets/profile.jpeg")),
                ),
                Icon(Icons.settings_outlined)
              ],
            ),
          ),
          verticalSpace(10),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ProfileInfo();
              }));
            },
            child: Text(
              "Drawers",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
            ),
          ),
          verticalSpace(30),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTextField(context, 250, 50, "Search on Huba",
                  Icon(Icons.search), () {}),
              SizedBox(
                width: 14,
              ),
              Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.grey.shade400),
                      borderRadius: BorderRadius.circular(9)),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: ImageIcon(AssetImage("assets/logos/Vector.png"))),
              horizontalSapce(10),
              Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.grey.shade400),
                      borderRadius: BorderRadius.circular(9)),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Icon(Icons.add))
            ],
          ),
          verticalSpace(30),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  DrawerCard(
                    index: 2,
                  ),
                  verticalSpace(30),
                  DrawerCard(
                    index: 3,
                  ),
                  verticalSpace(30),
                  DrawerCard(
                    index: 6,
                  ),
                  verticalSpace(30),
                  DrawerCard(
                    index: 4,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
