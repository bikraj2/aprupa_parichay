import 'package:aprupa_parichay/app/component/spaces.dart';
import 'package:flutter/material.dart';

class OrderInfo extends StatelessWidget {
  OrderInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Order Info",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
          ),
          verticalSpace(20),
          orderDetail("Order Address", "Zip Code 410200"),
          verticalSpace(20),
          orderDetail("Receives", "Ava Johnson"),
          verticalSpace(20),
          orderDetail("Payment", "MasterCard ending in 8940"),
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
