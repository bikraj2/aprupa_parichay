// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:aprupa_parichay/app/component/spaces.dart';
import 'package:aprupa_parichay/features/market/components/market_card.dart';
import 'package:aprupa_parichay/features/market/components/tag_card.dart';

import 'package:aprupa_parichay/features/market/pages/new_stores.dart';
import 'package:aprupa_parichay/features/market/views/discover_tags.dart';
import 'package:aprupa_parichay/features/market/views/product_on_sale.dart';
import 'package:aprupa_parichay/features/market/views/store_week.dart';
import 'package:flutter/material.dart';

class Featured extends StatefulWidget {
  const Featured({super.key});

  @override
  State<Featured> createState() => _FeaturedState();
}

class _FeaturedState extends State<Featured> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Stack(
            children: [
              Positioned(
                top: 58,
                left: 49,
                child: Image(
                    width: 270,
                    fit: BoxFit.fitWidth,
                    image: AssetImage(
                      "assets/featured/container2.png",
                    )),
              ),
              Positioned(
                top: 20,
                left: 13,
                child: Image(
                    width: 350,
                    fit: BoxFit.fitWidth,
                    image: AssetImage(
                      "assets/featured/container1.png",
                    )),
              ),
              Positioned(
                child: Image(
                    width: 500,
                    fit: BoxFit.cover,
                    image: AssetImage(
                      "assets/featured/container.png",
                    )),
              ),
            ],
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "New Stores",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
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
          SizedBox(
            height: 10,
          ),
          ProductSale(),
          SizedBox(height: 10),
          DiscoverTags(),
          verticalSpace(10),
          StoreWeek(),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
