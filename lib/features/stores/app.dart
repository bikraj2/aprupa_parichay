// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:math';

import 'package:aprupa_parichay/app/component/custom_button.dart';
import 'package:aprupa_parichay/app/component/spaces.dart';
import 'package:aprupa_parichay/features/market/components/collection_comp.dart';
import 'package:aprupa_parichay/features/market/components/market_card.dart';
import 'package:aprupa_parichay/features/market/components/store_logo.dart';
import 'package:aprupa_parichay/features/market/components/tag_card.dart';
import 'package:aprupa_parichay/features/market/pages/new_stores.dart';
import 'package:aprupa_parichay/global_variables.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Store extends StatelessWidget {
  Store({super.key});

  List<String> img = ["Dress", "Shoes", "Shirts", "Bags", "Jeans"];

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

  ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        controller: _scrollController,
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        child: Container(
          padding: EdgeInsets.only(top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Spotlight",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              ),
              verticalSpace(20),
              SizedBox(
                width: GlobalVariable.width - 40,
                child: Stack(
                  children: [
                    Positioned(
                        left: 160, child: Image.asset("assets/basejeans.png")),
                    Positioned(
                        left: 100,
                        child: Image.asset("assets/basewhiteSet.png")),
                    Positioned(child: Image.asset("assets/basedo_it.png")),
                  ],
                ),
              ),
              verticalSpace(15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Nike",
                    style: TextStyle(fontWeight: FontWeight.w200, fontSize: 18),
                  ),
                  Text(
                    "Sports,Casual",
                    style: TextStyle(fontWeight: FontWeight.w100, fontSize: 16),
                  ),
                ],
              ),
              verticalSpace(30),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "New Stores",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                      IconButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return NewStores();
                            }));
                          },
                          icon: Icon(Icons.arrow_forward))
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        MarketCard(
                          logo: "assets/stores/brocade.png",
                          img: "assets/stores/borcade_cover.png",
                          name: "Brocade",
                          location: "Pulchowk,Lalitpur",
                        ),
                        MarketCard(
                          logo: "assets/stores/gucci.png",
                          img: "assets/stores/gucci_cover.png",
                          name: "Gucci",
                          location: "Florence, Italy",
                        ),
                        MarketCard(
                          logo: "assets/stores/nike_logo.png",
                          img: "assets/stores/nike_cover.png",
                          name: "Brocade",
                          location: "Oregon, United States",
                        ),
                        MarketCard(
                          logo: "assets/stores/Lv_logo.png",
                          img: "assets/stores/lv_cover.png",
                          name: "Brocade",
                          location: "Paris, France",
                        )
                      ],
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Store on Sale",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                      IconButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return NewStores();
                            }));
                          },
                          icon: Icon(Icons.arrow_forward))
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        MarketCard(
                          logo: "assets/placeholderlacoste_logo.png",
                          img: "assets/stores/borcade_cover.png",
                          name: "Brocade",
                          location: "Pulchowk,Lalitpur",
                        ),
                        MarketCard(
                          logo: "assets/imagelevi_logo.png",
                          img: "assets/containerlevi.png",
                          name: "Levi",
                          location: "Florence, Italy",
                        ),
                        MarketCard(
                          logo: "assets/stores/zara_logo.png",
                          img: "assets/stores/zara_store.jpeg",
                          name: "Zara",
                          location: "New York, United States",
                        ),
                        MarketCard(
                          logo: "assets/stores/puma_logo.png",
                          img: "assets/stores/puma_store.jpeg",
                          name: "Puma",
                          location: "Munich, Germany",
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "All Stores",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        Row(
                          children: [Icon(Icons.list)],
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: GlobalVariable.height - 200,
                    child: Expanded(
                        child: AlignedGridView.count(
                      controller: _scrollController,
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
                                  (Random().nextDouble() * 100)
                                      .toStringAsFixed(0)));
                        } else {
                          return brandLogo(context,
                              img: images[index],
                              name: images[index].split("_")[0].split(".")[0]);
                        }
                      },
                    )),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
