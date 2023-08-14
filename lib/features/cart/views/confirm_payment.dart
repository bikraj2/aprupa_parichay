import 'package:aprupa_parichay/features/cart/components/confirm_card.dart';
import 'package:aprupa_parichay/global_variables.dart';
import 'package:flutter/material.dart';

class ConfirmOrder extends StatefulWidget {
  const ConfirmOrder({super.key});

  @override
  State<ConfirmOrder> createState() => _ConfirmOrderState();
}

class _ConfirmOrderState extends State<ConfirmOrder> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: GlobalVariable.height - 200,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: ConfirmCard(
          img: "assets/5.jpg",
          name: "Joggers Letton Joggers",
          desc: "26 - S | Blue | ID: 9348141",
        ),
      ),
    );
  }
}
