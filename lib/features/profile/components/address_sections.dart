// ignore_for_file: prefer_const_constructors

import 'package:aprupa_parichay/app/component/custom_button.dart';
import 'package:aprupa_parichay/app/component/custom_icon.dart';
import 'package:aprupa_parichay/app/component/spaces.dart';
import 'package:aprupa_parichay/global_variables.dart';
import 'package:flutter/material.dart';

import '../../../app/constants/colors.dart';

class AddressSection extends StatefulWidget {
  const AddressSection({super.key});

  @override
  State<AddressSection> createState() => _AddressSectionState();
}

class _AddressSectionState extends State<AddressSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Addresses",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          verticalSpace(10),
          AddressCard(),
          verticalSpace(10),
          AddressCard(),
          verticalSpace(10),
          CustomButton(
            width: GlobalVariable.width - 50,
            onTap: () {},
            backgroundColor: Colors.white,
            borderWidth: 0.1,
            borderColor: Colors.black,
            text: "Add address",
          )
        ],
      ),
    );
  }
}

class AddressCard extends StatefulWidget {
  AddressCard({super.key, this.visible = false});
  bool visible;
  @override
  State<AddressCard> createState() => _AddressCardState();
}

class _AddressCardState extends State<AddressCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        InkWell(
          splashFactory: NoSplash.splashFactory,
          onTap: () {
            setState(() {
              widget.visible = false;
            });
          },
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Ava Johnson - Work",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                verticalSpace(10),
                Text(
                    "1678 Crim Lane, Greendale Country, \nColorado \nZip Code :15134",
                    style:
                        TextStyle(fontSize: 17, fontWeight: FontWeight.w200)),
                verticalSpace(15),
                verticalSpace(15),
              ],
            ),
            InkWell(
                splashFactory: NoSplash.splashFactory,
                onTap: () {
                  setState(() {
                    widget.visible = true;
                  });
                },
                child: CustomIcon(
                  img: "assets/logos/dots.png",
                  color: Colors.transparent,
                )),
          ]),
        ),
        Positioned(
          right: 10,
          bottom: 10,
          child: Visibility(
            visible: widget.visible,
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(8)),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Edit Address",
                      style: TextStyle(fontSize: 16),
                    ),
                    verticalSpace(20),
                    Text(
                      "Delete Address",
                      style: TextStyle(color: Colors.red),
                    )
                  ]),
            ),
          ),
        )
      ],
    );
  }
}
