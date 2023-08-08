// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  ProductCard(
      {super.key,
      required this.img,
      required this.price,
      required this.name,
      this.onSale = false,
      this.disPercen = 0});
  bool onSale;
  double disPercen;
  String img;
  double price;
  String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              clipBehavior: Clip.hardEdge,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(12)),
              child: Image(
                image: AssetImage(img),
                width: 210,
                height: 200,
                fit: BoxFit.cover,
              )),
          SizedBox(
            height: 10,
          ),
          Text(
            name,
            style: TextStyle(
              color: Color(0xFF272728),
              fontSize: 16,
              fontFamily: 'HeyWow',
              fontWeight: FontWeight.w400,
              height: 1.62,
              letterSpacing: 0.32,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          onSale
              ? Text.rich(
                  TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: '\$${price}',
                        style: new TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                      TextSpan(
                          text: ' \$${price * (1 - disPercen / 100)}',
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.w700)),
                    ],
                  ),
                )
              : Text(
                  "\$${price}",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                ),
        ],
      ),
    );
  }
}
