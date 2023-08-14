import 'package:aprupa_parichay/app/component/custom_button.dart';
import 'package:aprupa_parichay/app/component/spaces.dart';
import 'package:aprupa_parichay/global_variables.dart';
import 'package:flutter/material.dart';

class Dist_Centre extends StatelessWidget {
  const Dist_Centre({super.key});

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
                "Your package is on it's way.",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              verticalSpace(5),
              Text("Arrival Estimate: April 17")
            ],
          ),
          verticalSpace(10),
          preparationCard(context, "Your package is near!", "April 15, 12:05"),
          preparationCard(
              context, "Your package is on route.", "April 15, 2:05"),
          preparationCard(context, "Your package left the distribution Center",
              "April 15, 4:05"),
          verticalSpace(10),
          CustomButton(
            width: GlobalVariable.width - 20,
            onTap: () {},
            backgroundColor: Colors.white,
            borderColor: Colors.black,
            borderWidth: 0.4,
            text: "Cancel Order.",
          )
        ],
      ),
    );
  }
}

Widget preparationCard(BuildContext context, String title, String desc) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        verticalSpace(5),
        Text(
          desc,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w200),
        )
      ],
    ),
  );
}
