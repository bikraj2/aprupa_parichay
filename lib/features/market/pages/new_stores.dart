// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:math';

import 'package:aprupa_parichay/app/component/spaces.dart';
import 'package:aprupa_parichay/features/market/components/store_logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class NewStores extends StatelessWidget {
  NewStores({super.key});
  List<String> images = [
    "gucci.png",
    "huba_logo.png",
    "brocade.png",
    "Lv_logo.png",
    "nike_logo.png",
    "HM_logo.png",
    "zara_logo.png",
    "puma_logo.png"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
            top: MediaQuery.of(context).padding.top,
            left: 10,
            right: 10,
            bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back)),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "New Stores",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30),
                  ),
                  verticalSpace(10),
                  Text(
                    "Explore the brands that just joined Tassel!",
                    style: TextStyle(
                        fontWeight: FontWeight.w300, letterSpacing: 0.5),
                  )
                ],
              ),
            ),
            Expanded(
              child: AlignedGridView.count(
                itemCount: 8,
                mainAxisSpacing: 60,
                crossAxisCount: 3,
                itemBuilder: (context, index) {
                  if (index % 2 == 0 && (index != 0)) {
                    return brandLogo(context,
                        img: images[index],
                        name: images[index].split("_")[0].split(".")[0],
                        onSale: true,
                        disPercent: int.parse(
                            (Random().nextDouble() * 100).toStringAsFixed(0)));
                  } else {
                    return brandLogo(context,
                        img: images[index],
                        name: images[index].split("_")[0].split(".")[0]);
                  }
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
