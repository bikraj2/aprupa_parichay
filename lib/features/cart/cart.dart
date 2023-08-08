// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:aprupa_parichay/app/component/custom_button.dart';
import 'package:aprupa_parichay/app/component/spaces.dart';
import 'package:aprupa_parichay/app/constants/colors.dart';
import 'package:aprupa_parichay/features/cart/components/cart_card.dart';
import 'package:aprupa_parichay/features/cart/views/checkout.dart';
import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.grey.shade100,
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).padding.top,
              left: 20,
              right: 20,
              bottom: 10),
          child: Stack(
            children: [
              Column(
                children: [
                  Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.arrow_back_ios)),
                      Center(
                        child: ImageIcon(
                            size: 40, AssetImage("assets/logos/wrapper.png")),
                      )
                    ],
                  ),
                  verticalSpace(30),
                  Center(
                    child: Text(
                      "Shopping Cart",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                    ),
                  ),
                  verticalSpace(50),
                  cartCard(
                    "Beshka tappered",
                  ),
                ],
              ),
              Positioned(
                bottom: 18,
                left: 10,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Subtotal (VAT included)",
                          style: TextStyle(fontSize: 18),
                        ),
                        horizontalSapce(140),
                        Text(
                          "\$34",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 16),
                        )
                      ],
                    ),
                    verticalSpace(10),
                    SizedBox(
                      height: 50,
                      child: CustomButton(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Checkout();
                          }));
                        },
                        width: 370,
                        text: "Continue to Checkout",
                        backgroundColor: primarColor,
                        textColor: Colors.white,
                      ),
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
