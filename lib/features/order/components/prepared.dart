import 'package:aprupa_parichay/app/component/custom_button.dart';
import 'package:aprupa_parichay/app/component/spaces.dart';
import 'package:aprupa_parichay/features/order/components/dist_centre.dart';
import 'package:aprupa_parichay/global_variables.dart';
import 'package:flutter/material.dart';

class Preparation extends StatelessWidget {
  const Preparation({super.key});

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
                "Your package is being prepared.",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              verticalSpace(5),
              Text("Arrival Estimate: April 17")
            ],
          ),
          verticalSpace(10),
          preparationCard(context, "The seller is preparing your package.",
              "April 15, 12:05"),
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
