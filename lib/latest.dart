// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:aprupa_parichay/features/products/views/product_card_feed.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
// import '../../../prodcut/components/product_focus.dart';

class Latest extends StatefulWidget {
  Latest({super.key});

  @override
  State<Latest> createState() => _LatestState();
}

class _LatestState extends State<Latest> {
  @override
  Widget build(BuildContext context) {
    print("asdf");
    return Container(
      padding: EdgeInsets.only(bottom: 15),
      child: Stack(
        children: [
          SizedBox(
            height: 10,
          ),
          MasonryGridView.count(
              shrinkWrap: true,
              itemCount: 10,
              padding: EdgeInsets.all(10),
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              crossAxisCount: 2,
              itemBuilder: (context, index) {
                return InkWell(
                    onTap: () {},
                    child: ProductCard(img: "assets/${index + 1}.jpg"));
              }),
        ],
      ),
    );
  }
}
