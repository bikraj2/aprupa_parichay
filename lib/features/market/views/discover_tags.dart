// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:aprupa_parichay/features/market/components/tag_card.dart';

import 'package:flutter/material.dart';

class DiscoverTags extends StatefulWidget {
  const DiscoverTags({super.key});

  @override
  State<DiscoverTags> createState() => _DiscoverTagsState();
}

class _DiscoverTagsState extends State<DiscoverTags> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            "Discover Tags",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
          ),
          Icon(Icons.arrow_forward),
        ]),
        SizedBox(
          height: 20,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              filterByTag(
                  context, "assets/featured/sustainable.png", "Sustainable"),
              filterByTag(context, "assets/featured/luxury.png", "Luxury"),
              filterByTag(
                  context, "assets/featured/sustainable.png", "Sustainable"),
            ],
          ),
        ),
        // TagCard()
      ],
    );
  }
}
