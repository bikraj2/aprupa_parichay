// ignore_for_file: prefer_const_constructors

import 'package:aprupa_parichay/app/component/custom_button.dart';
import 'package:aprupa_parichay/app/component/custom_icon.dart';
import 'package:aprupa_parichay/app/component/lines.dart';
import 'package:aprupa_parichay/app/component/spaces.dart';
import 'package:aprupa_parichay/app/constants/colors.dart';

import 'package:aprupa_parichay/features/profile/components/address_sections.dart';
import 'package:aprupa_parichay/features/profile/components/followers_card.dart';
import 'package:aprupa_parichay/features/profile/components/payment_details.dart';
import 'package:aprupa_parichay/features/profile/components/preferences_section.dart';
import 'package:flutter/material.dart';

class ProfileInfo extends StatefulWidget {
  const ProfileInfo({super.key});

  @override
  State<ProfileInfo> createState() => ProfileInfoState();
}

class ProfileInfoState extends State<ProfileInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).padding.top, bottom: 20),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back),
                  ),
                  verticalSpace(10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(120)),
                          child: Image.asset(
                              alignment: Alignment.topRight,
                              width: 90,
                              height: 90,
                              fit: BoxFit.cover,
                              "assets/profile.jpeg")),
                      verticalSpace(10),
                      Text(
                        "Ava Johnson",
                        style: TextStyle(
                            fontWeight: FontWeight.w800, fontSize: 26),
                      ),
                      verticalSpace(10),
                      Text("@avajohnson"),
                      verticalSpace(20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomButton(
                            width: 150,
                            onTap: () {
                              showModalBottomSheet(
                                  context: context,
                                  backgroundColor: Colors.transparent,
                                  builder: (context) {
                                    return FollowersInfo();
                                  });
                            },
                            text: "15 Following",
                            backgroundColor: Colors.white,
                            borderWidth: 0.6,
                            borderColor: Colors.grey.shade400,
                          ),
                          horizontalSapce(10),
                          Container(
                              decoration: BoxDecoration(
                                  color: primarColor,
                                  border: Border.all(
                                      width: 1, color: Colors.grey.shade400),
                                  borderRadius: BorderRadius.circular(9)),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              child: Icon(
                                Icons.settings_outlined,
                                color: Colors.white,
                              ))
                        ],
                      ),
                      verticalSpace(40),
                      horizontal_line(context, 1),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 21, vertical: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "My orders and messages",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  letterSpacing: 0.9),
                            ),
                            CustomIcon(
                              img: "assets/inbox.png",
                              color: Colors.transparent,
                              width: 40,
                            ),
                          ],
                        ),
                      ),
                      horizontal_line(context, 1),
                      preferences(context),
                      horizontal_line(context, 1),
                      PaymentOptions(),
                      horizontal_line(context, 1),
                      AddressSection()
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget FollowersInfo() {
  return DraggableScrollableSheet(
      snap: true,
      expand: true,
      initialChildSize: 1,
      snapSizes: [0.5, 0.9],
      builder: (context, scroll) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40), topRight: Radius.circular(40))),
          child: ListView(
            children: [
              verticalSpace(14),
              Center(
                  child: Text(
                "10 Following",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
              )),
              SizedBox(
                height: 30,
              ),
              horizontal_line(context, 1),
              FollowerCard(
                  isSvg: true,
                  img: "assets/container.svg",
                  title: "Sustainable",
                  subtitle: "Tag"),
              FollowerCard(
                  isSvg: false,
                  img: "assets/stores/Lv_logo.png",
                  title: "Sustainable",
                  subtitle: "Store"),
              FollowerCard(
                  isSvg: true,
                  img: "assets/container.svg",
                  title: "Sustainable",
                  subtitle: "Tag"),
              FollowerCard(
                  isSvg: false,
                  img: "assets/stores/nike_logo.png",
                  title: "Sustainable",
                  subtitle: "Store"),
              FollowerCard(
                  isSvg: false,
                  img: "assets/stores/HM_logo.png",
                  title: "Sustainable",
                  subtitle: "Store"),
              FollowerCard(
                  isSvg: true,
                  img: "assets/container.svg",
                  title: "Sustainable",
                  subtitle: "Tag"),
              FollowerCard(
                  isSvg: false,
                  img: "assets/stores/Lv_logo.png",
                  title: "Sustainable",
                  subtitle: "Store"),
              FollowerCard(
                  isSvg: true,
                  img: "assets/container.svg",
                  title: "Sustainable",
                  subtitle: "Tag"),
              FollowerCard(
                  isSvg: false,
                  img: "assets/stores/nike_logo.png",
                  title: "Sustainable",
                  subtitle: "Store"),
              FollowerCard(
                  isSvg: false,
                  img: "assets/stores/HM_logo.png",
                  title: "Sustainable",
                  subtitle: "Store"),
            ],
          ),
        );
      });
}
