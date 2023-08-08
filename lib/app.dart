// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:aprupa_parichay/global_variables.dart';
import 'package:aprupa_parichay/latest.dart';
import 'package:flutter/material.dart';

class MainFeed extends StatefulWidget {
  const MainFeed({super.key});

  @override
  State<MainFeed> createState() => _MainFeedState();
}

class _MainFeedState extends State<MainFeed> with TickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 6, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 24,
                      child: Image.asset("assets/inbox.png"),
                    ),
                    Text(
                      "Feed",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        fontFamily: 'HeyWow',
                      ),
                    ),
                    SizedBox(
                      height: 24,
                      child: Image.asset("assets/search.png"),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                TabBar(
                  isScrollable: true,
                  indicatorPadding: const EdgeInsets.symmetric(horizontal: 25),
                  indicatorColor: Colors.black,
                  controller: _tabController,
                  tabs: const [
                    Text(
                      "All",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                    Text(
                      "Sustainable",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                    Text(
                      "Lacoste",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                    Text(
                      "Adidas",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                    Text(
                      "Vintage",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                    Text(
                      "Street Wear",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ],
                ),
                Expanded(
                    child: TabBarView(controller: _tabController, children: [
                  Latest(),
                  Latest(),
                  Latest(),
                  Latest(),
                  Latest(),
                  Latest()
                ]))
              ],
            ),
          ],
        ));
  }
}
