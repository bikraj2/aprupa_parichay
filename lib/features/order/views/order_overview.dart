// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:aprupa_parichay/app/component/lines.dart';
import 'package:aprupa_parichay/app/component/show_on_tap.dart';
import 'package:aprupa_parichay/app/component/spaces.dart';
import 'package:aprupa_parichay/features/cart/components/bill_details.dart';
import 'package:aprupa_parichay/features/cart/components/checkout_progress.dart';
import 'package:aprupa_parichay/features/cart/views/order_info.dart';
import 'package:aprupa_parichay/features/drawers/pages/drawer_detail.dart';
import 'package:aprupa_parichay/features/order/components/delivered.dart';
import 'package:aprupa_parichay/features/order/components/dist_centre.dart';
import 'package:aprupa_parichay/features/order/components/prepared.dart';
import 'package:aprupa_parichay/features/order/views/shipping_info.dart';
import 'package:flutter/material.dart';

class OrderOverView extends StatefulWidget {
  const OrderOverView({super.key});

  @override
  State<OrderOverView> createState() => _OrderOverViewState();
}

class _OrderOverViewState extends State<OrderOverView> {
  int activestep = 0;
  void updateStateValue(int newValue) {
    setState(() {
      activestep = newValue;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        activestep += 1;
      });
      Future.delayed(Duration(seconds: 2), () {
        setState(() {
          activestep += 1;
        });
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).padding.top, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back_ios)),
                  Text(
                    "Order Tracking",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              verticalSpace(20),
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        width: 150,
                        height: 170,
                        "assets/3.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    verticalSpace(10),
                    Text(
                      "Breshka Mom Jeans",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                    ),
                    verticalSpace(10),
                    Text(
                      "26 - S | Blue | ID: 9348141",
                      style:
                          TextStyle(fontWeight: FontWeight.w300, fontSize: 16),
                    ),
                  ],
                ),
              ),
              CheckoutProgress(
                  activeStep: activestep, onUpdateStateValue: updateStateValue),
              horizontal_line(context, 1),
              if (activestep == 0)
                Dist_Centre()
              else if (activestep == 1)
                Preparation()
              else if (activestep == 2)
                Delivered(),
              horizontal_line(context, 1),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: ShippingInfo()),
              horizontal_line(context, 1),
              actionCard("Share Drawer", Icons.share_outlined),
              verticalSpace(10),
              actionCard("Report a Problem", Icons.dangerous_sharp),
              verticalSpace(10),
              horizontal_line(context, 1),
              ShowOnTap(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Bill(
                        name: "Bershaka Mom Jeans",
                        cost: 34,
                        confrim: false,
                      ),
                      verticalSpace(10),
                      OrderInfo()
                    ],
                  ),
                  title: "Order Info",
                  icon: Icon(Icons.keyboard_arrow_down_outlined)),
              verticalSpace(10),
              horizontal_line(context, 1),
              verticalSpace(10),
            ],
          ),
        ),
      ),
    );
  }
}
