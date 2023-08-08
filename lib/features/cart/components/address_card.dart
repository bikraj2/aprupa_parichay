// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable
import 'package:aprupa_parichay/app/component/lines.dart';
import 'package:aprupa_parichay/app/component/spaces.dart';
import 'package:aprupa_parichay/app/constants/colors.dart';

import 'package:flutter/material.dart';

class AddressCard extends StatefulWidget {
  AddressCard({super.key, required this.selected});
  bool selected;

  @override
  State<AddressCard> createState() => _AddressCardState();
}

class _AddressCardState extends State<AddressCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 20,
      ),
      decoration: BoxDecoration(
          color: widget.selected ? primarColor.shade50 : Colors.transparent,
          borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          verticalSpace(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Ava Johnson - Work",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  verticalSpace(10),
                  Text(
                      "3910 Crim Lane, Greendale Country, \nColorado Zip COe :412350",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w200)),
                  verticalSpace(15),
                  Row(
                    children: [
                      Text("Arrival est: Apr 15",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              color: primarColor.shade600)),
                      horizontalSapce(10),
                      Text("\$20 Shipping")
                    ],
                  ),
                  verticalSpace(15)
                ],
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    widget.selected = !widget.selected;
                  });
                },
                child: CircleAvatar(
                  radius: 11,
                  backgroundColor: widget.selected ? primarColor : Colors.white,
                  child: CircleAvatar(
                    radius: 9,
                    backgroundColor:
                        widget.selected ? Colors.white : primarColor.shade100,
                    child: CircleAvatar(
                      radius: 6,
                      backgroundColor:
                          widget.selected ? primarColor : primarColor.shade100,
                    ),
                  ),
                ),
              )
            ],
          ),
          horizontal_line(context, 2),
          InkWell(
            child: Text("EDIT",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w200,
                    color: primarColor)),
          )
        ],
      ),
    );
  }
}

class RadioSwitch extends StatefulWidget {
  RadioSwitch({super.key, required this.selected});
  bool selected;

  @override
  State<RadioSwitch> createState() => _RadioSwitchState();
}

class _RadioSwitchState extends State<RadioSwitch> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          widget.selected = !widget.selected;
        });
      },
      child: CircleAvatar(
        radius: 11,
        backgroundColor: widget.selected ? primarColor : Colors.white,
        child: CircleAvatar(
          radius: 9,
          backgroundColor:
              widget.selected ? Colors.white : primarColor.shade100,
          child: CircleAvatar(
            radius: 6,
            backgroundColor:
                widget.selected ? primarColor : primarColor.shade100,
          ),
        ),
      ),
    );
  }
}
