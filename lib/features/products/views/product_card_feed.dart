// ignore_for_file: prefer_const_constructors

import 'package:aprupa_parichay/features/app.dart';
import 'package:aprupa_parichay/features/products/views/product_detail.dart';
import 'package:aprupa_parichay/features/products/views/product_focus.dart';

import 'package:flutter/material.dart';

class ProductCard extends StatefulWidget {
  ProductCard({super.key, required this.img});
  final String img;
  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (_) {
          return ProductDetail();
        }));
      },
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              clipBehavior: Clip.hardEdge,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(16)),
              child: Image.asset(
                widget.img,
                width: MediaQuery.of(context).size.width / 2 - 40,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Product Name 1",
              style: TextStyle(
                color: Color(0xFF272728),
                fontSize: 14,
                fontFamily: 'HeyWow',
                fontWeight: FontWeight.w400,
                letterSpacing: 0.56,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '\$34',
              style: TextStyle(
                color: Color(0xFF272728),
                fontSize: 14,
                fontFamily: 'HeyWow',
                fontWeight: FontWeight.w600,
                letterSpacing: 0.56,
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ]),
    );
  }
}
