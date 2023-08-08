// ignore_for_file: prefer_const_constructors

import 'package:aprupa_parichay/app/component/custom_icon.dart';
import 'package:aprupa_parichay/app/component/custom_text_field.dart';
import 'package:aprupa_parichay/features/market/components/market_card.dart';
import 'package:aprupa_parichay/features/market/views/collection.dart';
import 'package:aprupa_parichay/features/market/views/featured.dart';
import 'package:aprupa_parichay/global_variables.dart';
import 'package:flutter/material.dart';

class Market extends StatefulWidget {
  const Market({super.key});

  @override
  State<Market> createState() => _MarketState();
}

class _MarketState extends State<Market> with TickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 6, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: GlobalVariable.height + 60,
        padding: EdgeInsets.all(17),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.only(top: 5),
                padding: EdgeInsets.only(right: 15, left: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: Color.fromARGB(255, 255, 218, 209)),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        CustomIcon(
                          img: "assets/inbox.png",
                          color: Colors.transparent,
                          width: 40,
                        ),
                        Positioned(
                          right: 5,
                          top: 8,
                          child: CircleAvatar(
                            backgroundColor: Color.fromARGB(
                              255,
                              255,
                              124,
                              90,
                            ),
                            radius: 2,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Text(
                      "Your Package is almost there!",
                      style: TextStyle(
                          letterSpacing: 1, fontWeight: FontWeight.w300),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                "Market",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(
              height: 10,
            ),
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
                      border: Border.all(width: 1, color: Colors.black),
                      borderRadius: BorderRadius.circular(9)),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Text(
                    "W",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            TabBar(
              isScrollable: true,
              indicatorPadding: const EdgeInsets.symmetric(horizontal: 48),
              indicatorColor: Colors.black,
              controller: _tabController,
              tabs: const [
                Text(
                  "Featured",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  "Collection",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  "Stores",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  "Tags",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            Expanded(
                child: TabBarView(
                    controller: _tabController,
                    children: [Featured(), Collection()])),
          ],
        ),
      ),
    );
  }
}
