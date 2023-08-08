// ignore_for_file:, prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:aprupa_parichay/app/component/show_on_tap.dart';
import 'package:aprupa_parichay/global_variables.dart';
import 'product_card.dart';
import 'package:flutter/material.dart';

class CompleteOutfit extends StatefulWidget {
  const CompleteOutfit({super.key});

  @override
  State<CompleteOutfit> createState() => _CompleteOutfitState();
}

class _CompleteOutfitState extends State<CompleteOutfit> {
  bool visible = true;
  @override
  Widget build(BuildContext context) {
    return ShowOnTap(

        child: SizedBox(
          width: GlobalVariable.width - 40,
          height: 410,
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.all(10),
                child: ProductCard(
                    img: "assets/${index + 1}.jpg",
                    price: 34,
                    name: "Full jeans"),
              );
            },
          ),
        ),
        title: "Complete Outfit",
        icon: Icon(Icons.keyboard_arrow_down));
  }
}
