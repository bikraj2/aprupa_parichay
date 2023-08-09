// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:aprupa_parichay/app.dart';
import 'package:aprupa_parichay/app/constants/colors.dart';
import 'package:aprupa_parichay/features/cart/cart.dart';
import 'package:aprupa_parichay/features/market/views/market.dart';
import 'package:aprupa_parichay/features/profile/views/profile_drawers.dart';
import 'package:aprupa_parichay/global_variables.dart';
import 'package:aprupa_parichay/latest.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(fontFamily: "HeyWow"),
      home: MainApp(),
    );
  }
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  List<Widget> widgets = [MainFeed(), Market(), Profile()];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    GlobalVariable(context);
    return Scaffold(
      floatingActionButton: Container(
        decoration: BoxDecoration(
            color: primarColor.shade100,
            borderRadius: BorderRadius.circular(12)),
        child: IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) {
                return Cart();
              }));
            },
            icon: ImageIcon(AssetImage("assets/logos/wrapper.png"))),
      ),
      bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          onTap: (value) {
            setState(() {
              index = value;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/home.png")),
              label: "Feed",
            ),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/shop.png")),
                label: "Market"),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/user.png")),
                label: "Profile"),
          ]),
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
            child: widgets[index],
          ),
        ],
      ),
    );
  }
}
