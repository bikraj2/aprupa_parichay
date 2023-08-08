// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:math';

import 'package:aprupa_parichay/features/products/components/product_card.dart';
import 'package:flutter/material.dart';

class ProductSale extends StatefulWidget {
  const ProductSale({super.key});

  @override
  State<ProductSale> createState() => _ProductSaleState();
}

class _ProductSaleState extends State<ProductSale> {
  List<int> _indices = [1, 2, 3, 4];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            "On Sale",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
          ),
          Icon(Icons.arrow_forward),
        ]),
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
                    img: "assets/${index + 2}.jpg",
                    name: "Product Name",
                    price: double.parse(
                        (Random().nextDouble() * 100).toStringAsFixed(1)),
                    onSale: true,
                  ))
            ],
          ),
        ),
        // TagCard()
      ],
    );
  }
}
