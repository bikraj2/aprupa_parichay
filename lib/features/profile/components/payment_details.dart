import 'package:aprupa_parichay/app/component/spaces.dart';
import 'package:aprupa_parichay/app/constants/colors.dart';
import 'package:aprupa_parichay/features/cart/components/credit_card.dart';
import 'package:flutter/material.dart';

class PaymentOptions extends StatefulWidget {
  const PaymentOptions({super.key});

  @override
  State<PaymentOptions> createState() => _PaymentOptionsState();
}

class _PaymentOptionsState extends State<PaymentOptions> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "My preferences",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          verticalSpace(20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Credit_Card(
                  isVisa: true,
                  cardNumber: 6969696969696969,
                  bgColor: primarColor.shade50,
                ),
                Credit_Card(
                  isVisa: false,
                  cardNumber: 6969696969669696969,
                  bgColor: yellowAccent.shade50,
                ),
                Credit_Card(
                  isVisa: false,
                  cardNumber: 6969696969696969,
                  bgColor: redAccent.shade50,
                ),
                Credit_Card(
                  isVisa: true,
                  cardNumber: 6969696969696969,
                  bgColor: primarColor.shade50,
                ),
              ],
            ),
          ),
          verticalSpace(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                  child: Container(
                      alignment: Alignment.center,
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 60),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(width: 0.6, color: Colors.grey)),
                      child: Text(
                        "Edit",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ))),
              horizontalSapce(10),
              InkWell(
                  child: Container(
                      alignment: Alignment.center,
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(width: 0.6, color: Colors.grey)),
                      child: Text(
                        "Add Card",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ))),
            ],
          ),
          verticalSpace(20)
        ],
      ),
    );
  }
}
