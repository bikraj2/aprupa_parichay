// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:aprupa_parichay/app/component/custom_button.dart';
import 'package:aprupa_parichay/app/component/spaces.dart';
import 'package:aprupa_parichay/app/constants/colors.dart';
import 'package:aprupa_parichay/features/cart/components/credit_card.dart';
import 'package:aprupa_parichay/features/cart/components/flippable_card.dart';
import 'package:aprupa_parichay/global_variables.dart';
import 'package:flutter/material.dart';

class PaymentDetails extends StatefulWidget {
  const PaymentDetails({super.key});

  @override
  State<PaymentDetails> createState() => _PaymentDetailsState();
}

class _PaymentDetailsState extends State<PaymentDetails> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            height: GlobalVariable.height - 200,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Select or add a payment method",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.8),
                  ),
                  verticalSpace(20),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Credit_Card(
                          isVisa: true,
                          cardNumber: 12314524123412,
                          bgColor: primarColor.shade50,
                        ),
                        Credit_Card(
                          isVisa: false,
                          cardNumber: 12314524123412,
                          bgColor: yellowAccent.shade50,
                        ),
                        Credit_Card(
                          isVisa: false,
                          cardNumber: 12314524123412,
                          bgColor: redAccent.shade50,
                        ),
                        Credit_Card(
                          isVisa: true,
                          cardNumber: 12314524123412,
                          bgColor: primarColor.shade50,
                        ),
                      ],
                    ),
                  ),
                  verticalSpace(10),
                  CustomButton(
                    width: GlobalVariable.width - 40,
                    onTap: () {
                      showBottomSheet(
                          context: context,
                          constraints: BoxConstraints(maxHeight: 500),
                          builder: (context) {
                            return DraggableScrollableSheet(
                              initialChildSize: 0.4,
                              builder: (context, scrollController) {
                                return Container(
                                  child: Column(children: [
                                    Text(
                                      "Add Card",
                                      style: TextStyle(fontSize: 18),
                                    )
                                  ]),
                                );
                              },
                            );
                          });
                    },
                    text: "Add Card",
                    backgroundColor: Colors.white,
                    borderColor: Colors.grey.shade600,
                    borderWidth: 0.2,
                  ),
                  verticalSpace(10),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Enter Discount Coupon",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        ImageIcon(AssetImage("assets/logos/coupon.png"))
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 30),
                        child: Text(
                          "Other Payment options",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400),
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.blue.shade100,
                        splashFactory: InkRipple.splashFactory,
                        onTap: () {},
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Paypal",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                              Image.asset(
                                "assets/paypal_logo.png",
                                height: 50,
                              )
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.green.shade100,
                        splashFactory: InkRipple.splashFactory,
                        onTap: () {},
                        child: Container(
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14)),
                          padding: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Esewa",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                              Image.asset(
                                "assets/esewa.png",
                                height: 40,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Add Card",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w600),
                              ),
                              verticalSpace(20),
                              FlippableCard()
                            ]),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          // Positioned(
          //     bottom: 20,
          //     child: SizedBox(
          //       width: GlobalVariable.width - 40,
          //       child: Row(
          //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //         children: [
          //           Text(
          //             "Total(VAT Included)",
          //             style:
          //                 TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
          //           ),
          //           Text(
          //             "\$48",
          //             style:
          //                 TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          //           )
          //         ],
          //       ),
          //     ))
        ],
      ),
    );
  }
}
