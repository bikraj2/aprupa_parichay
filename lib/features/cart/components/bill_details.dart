// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_string_interpolations

import 'package:aprupa_parichay/app/component/custom_button.dart';
import 'package:aprupa_parichay/app/component/lines.dart';
import 'package:aprupa_parichay/app/component/spaces.dart';
import 'package:aprupa_parichay/app/constants/colors.dart';
import 'package:aprupa_parichay/global_variables.dart';
import 'package:flutter/material.dart';

class Bill extends StatelessWidget {
  Bill(
      {super.key, required this.name, required this.cost, this.confrim = true});
  String name;
  double cost;
  bool confrim;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "${name}",
                style: TextStyle(fontSize: 16),
              ),
              Text(
                "\$${cost}",
                style: TextStyle(fontSize: 16),
              )
            ],
          ),
          verticalSpace(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Taxes",
                style: TextStyle(fontSize: 16),
              ),
              Text(
                "\$${cost * 0.2}",
                style: TextStyle(fontSize: 16),
              )
            ],
          ),
          verticalSpace(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Shipping",
                style: TextStyle(fontSize: 16, color: primarColor),
              ),
              Text(
                "\$${5}",
                style: TextStyle(color: primarColor),
              )
            ],
          ),
          verticalSpace(10),
          horizontal_line(context, 1),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Total",
                style: TextStyle(fontSize: 22),
              ),
              Text(
                "\$${5}",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              )
            ],
          ),
          verticalSpace(20),
          if (confrim)
            CustomButton(
              width: GlobalVariable.width - 10,
              onTap: () {
                final snackBar = SnackBar(
                  backgroundColor: Colors.green,
                  content: const Text(
                      'The product has beeen sent to be delivered.',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.white)),
                  action: SnackBarAction(
                    label: 'close',
                    onPressed: () {
                      // Some code to undo the change.
                    },
                  ),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              textColor: Colors.white,
              backgroundColor: primarColor,
              text: "Confirm and pay",
            )
        ],
      ),
    );
  }
}
