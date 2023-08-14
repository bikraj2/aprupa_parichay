import 'package:aprupa_parichay/app/component/custom_button.dart';
import 'package:aprupa_parichay/app/component/spaces.dart';
import 'package:aprupa_parichay/app/constants/colors.dart';
import 'package:aprupa_parichay/global_variables.dart';
import 'package:flutter/material.dart';

class Delivered extends StatefulWidget {
  const Delivered({super.key});

  @override
  State<Delivered> createState() => _DeliveredState();
}

class _DeliveredState extends State<Delivered> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Your package was delivered.",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                verticalSpace(5),
                Text("Delivery date: April 18")
              ],
            ),
            verticalSpace(40),
            CustomButton(
              width: GlobalVariable.width - 20,
              onTap: () {},
              backgroundColor: Colors.white,
              borderColor: Colors.black,
              borderWidth: 0.4,
              text: "Shipping Tracking Details",
            ),
            verticalSpace(10),
            CustomButton(
              width: GlobalVariable.width - 20,
              onTap: () {},
              backgroundColor: primarColor,
              borderColor: Colors.black,
              borderWidth: 0.4,
              text: "Buy again.",
              textColor: Colors.white,
            )
          ],
        ));
  }
}
