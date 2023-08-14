import 'package:aprupa_parichay/app/component/lines.dart';
import 'package:aprupa_parichay/app/component/show_on_tap.dart';
import 'package:aprupa_parichay/app/component/spaces.dart';
import 'package:aprupa_parichay/features/cart/components/bill_details.dart';
import 'package:aprupa_parichay/features/cart/views/order_info.dart';
import 'package:aprupa_parichay/global_variables.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class ConfirmCard extends StatelessWidget {
  ConfirmCard(
      {super.key, required this.img, required this.name, required this.desc});
  String img;
  String name;
  String desc;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  width: 150,
                  height: 170,
                  img,
                  fit: BoxFit.cover,
                ),
              ),
              verticalSpace(10),
              Text(
                name,
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
              ),
              verticalSpace(10),
              Text(
                desc,
                style: TextStyle(fontWeight: FontWeight.w300, fontSize: 16),
              ),
            ],
          ),
        ),
        verticalSpace(20),
        horizontal_line(context, 1),
        Bill(name: name, cost: 40),
        verticalSpace(10),
        OrderInfo(),
        horizontal_line(context, 1),
        ShowOnTap(
            child: Container(
              child: AutoSizeText(
                "Products will be returned in 30 days.Any  product after the 30 days mark  will have to be returned after an mail to the cutomer Service",
                style:
                    TextStyle(letterSpacing: 0.9, fontWeight: FontWeight.w500),
              ),
            ),
            title: "Shipping and return policies",
            icon: Icon(Icons.keyboard_arrow_down_outlined))
      ],
    );
  }
}
