import 'dart:math';

import 'package:aprupa_parichay/features/products/components/product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class DrawerProducts extends StatefulWidget {
  const DrawerProducts({super.key});

  @override
  State<DrawerProducts> createState() => _DrawerProductsState();
}

class _DrawerProductsState extends State<DrawerProducts> {
  @override
  Widget build(BuildContext context) {
    return MasonryGridView.builder(
      itemCount: 4,
      shrinkWrap: true,
      gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2),
      itemBuilder: (context, index) {
        return ProductCard(
          img: "assets/${index + 2}.jpg",
          name: "Product Name",
          price: double.parse((Random().nextDouble() * 100).toStringAsFixed(1)),
          onSale: false,
        );
      },
    );
  }
}
