// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_typing_uninitialized_variables

import 'package:aprupa_parichay/app/component/custom_button.dart';
import 'package:aprupa_parichay/app/component/lines.dart';
import 'package:aprupa_parichay/app/component/spaces.dart';
import 'package:aprupa_parichay/app/constants/colors.dart';
import 'package:aprupa_parichay/features/cart/components/address_card.dart';
import 'package:aprupa_parichay/features/cart/views/payment_detail.dart';
import 'package:aprupa_parichay/global_variables.dart';
import 'package:flutter/material.dart';

class CheckoutAddress extends StatefulWidget {
  CheckoutAddress({super.key, required this.onUpdateStateValue});
  // ignore: avoid_types_as_parameter_names
  final Function(int) onUpdateStateValue;
  @override
  State<CheckoutAddress> createState() => CheckoutAddressState();
}

class CheckoutAddressState extends State<CheckoutAddress> {
  bool selected = true;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Select or add a shipping address",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w400, letterSpacing: 0.8),
        ),
        verticalSpace(20),
        AddressCard(
          selected: selected,
        ),
        verticalSpace(20),
        AddressCard(
          selected: !selected,
        ),
        verticalSpace(20),
        CustomButton(
          width: GlobalVariable.width - 40,
          onTap: () {},
          text: "Add address",
          backgroundColor: Colors.white,
          borderColor: Colors.grey.shade600,
          borderWidth: 0.4,
        ),
        verticalSpace(10),
        horizontal_line(context, 1),
        verticalSpace(10),
        Row(
          children: [
            Text(
              "Subtotal (VAT included)",
              style: TextStyle(fontSize: 18),
            ),
            horizontalSapce(140),
            Text(
              "\$34",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
            )
          ],
        ),
        verticalSpace(10),
        CustomButton(
          onTap: () {
            widget.onUpdateStateValue(1);
          },
          width: 370,
          text: "Continue to Checkout",
          backgroundColor: primarColor,
          textColor: Colors.white,
        ),
      ],
    ));
  }
}
