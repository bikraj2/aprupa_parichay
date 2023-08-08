// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:aprupa_parichay/app/component/custom_button.dart';
import 'package:aprupa_parichay/features/market/components/collection_comp.dart';
import 'package:aprupa_parichay/features/market/components/tag_card.dart';
import 'package:aprupa_parichay/global_variables.dart';
import 'package:flutter/material.dart';

class Collection extends StatefulWidget {
  const Collection({super.key});

  @override
  State<Collection> createState() => _CollectionState();
}

class _CollectionState extends State<Collection> {
  List<String> img = ["Dress", "Shoes", "Shirts", "Bags", "Jeans"];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      physics: BouncingScrollPhysics(),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Column(
                  children: [
                    Container(
                      height: GlobalVariable.height / 3,
                      child: SingleChildScrollView(
                        child: Column(children: [
                          Row(
                            children: [
                              CollectionCard(
                                  context,
                                  Colors.red,
                                  Color.fromARGB(255, 255, 237, 239),
                                  "On Sale"),
                              CollectionCard(
                                  context,
                                  Colors.blue,
                                  const Color.fromARGB(255, 209, 230, 247),
                                  "New in"),
                            ],
                          ),
                          Row(
                            children: [
                              CollectionCard(context, Colors.black,
                                  Colors.grey.shade200, "Clothing"),
                              CollectionCard(context, Colors.black,
                                  Colors.grey.shade200, "Shoes"),
                            ],
                          ),
                          Row(
                            children: [
                              CollectionCard(context, Colors.black,
                                  Colors.grey.shade200, "Bags"),
                              CollectionCard(context, Colors.black,
                                  Colors.grey.shade200, "Footwear"),
                            ],
                          ),
                          Row(
                            children: [
                              CollectionCard(context, Colors.black,
                                  Colors.grey.shade200, "Clothing"),
                              CollectionCard(context, Colors.black,
                                  Colors.grey.shade200, "Clothing"),
                            ],
                          ),
                          Row(
                            children: [
                              CollectionCard(context, Colors.black,
                                  Colors.grey.shade200, "Clothing"),
                              CollectionCard(context, Colors.black,
                                  Colors.grey.shade200, "Clothing"),
                            ],
                          ),
                        ]),
                      ),
                    ),
                  ],
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    decoration: BoxDecoration(color: Colors.white),
                    child: InkWell(
                      child: Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.symmetric(vertical: 10),
                          width: GlobalVariable.width - 70,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                color: Colors.black,
                                width: 0.4,
                              )),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.keyboard_arrow_down_rounded),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Show more",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                            ],
                          )),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Frequently Visited",
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.4),
            ),
            SizedBox(
              height: 20,
            ),
            CollectionList(context, "assets/Dress.png", "Dress", "Clothing"),
            SizedBox(
              height: 20,
            ),
            CollectionList(context, "assets/Bags.png", "Bags", "Clothing"),
            SizedBox(
              height: 20,
            ),
            CollectionList(context, "assets/Jeans.png", "Jeans", "Clothing"),
            SizedBox(
              height: 20,
            ),
            CollectionList(context, "assets/Shirts.png", "Shirts", "Clothing"),
            SizedBox(
              height: 20,
            ),
            CollectionList(context, "assets/Shoes.png", "Shoes", "Clothing"),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
