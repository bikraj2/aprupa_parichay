import 'package:aprupa_parichay/app/component/spaces.dart';
import 'package:flutter/material.dart';

class ShippingInfo extends StatelessWidget {
  ShippingInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Shipping Info",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
          ),
          verticalSpace(20),
          orderDetail("Order Address", "Zip Code 410200"),
          verticalSpace(20),
          orderDetail("Receives", "Ava Johnson"),
          verticalSpace(20),
          orderDetail("Tracking ID", "98q2734"),
          verticalSpace(10),
        ],
      ),
    );
  }
}

Widget orderDetail(String name, String desc) {
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style: TextStyle(fontWeight: FontWeight.w200, fontSize: 16),
        ),
        verticalSpace(10),
        Text(
          desc,
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
        )
      ],
    ),
  );
}
