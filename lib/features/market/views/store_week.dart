// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:math';

import 'package:aprupa_parichay/features/products/components/product_card.dart';
import 'package:flutter/material.dart';

class StoreWeek extends StatefulWidget {
  const StoreWeek({super.key});

  @override
  State<StoreWeek> createState() => _StoreWeekState();
}

class _StoreWeekState extends State<StoreWeek> {
  List<int> _indices = [1, 2, 3, 4];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/stores/gucci.png"),
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Gucci",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                    ),
                    Text(
                      "Store of the week",
                      style: TextStyle(
                          letterSpacing: 1,
                          fontWeight: FontWeight.w300,
                          fontSize: 16),
                    )
                  ],
                ),
              ],
            ),
            Icon(Icons.arrow_forward)
          ],
        ),
        SizedBox(
          height: 10,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ..._indices.map((
                index,
              ) =>
                  ProductCard(
                      img: "assets/product${index}.png",
                      price: double.parse(
                          (Random().nextDouble() * 1000).toStringAsFixed(1)),
                      name: "Product Name"))
            ],
          ),
        ),
        // TagCard()
      ],
    );
  }
}
