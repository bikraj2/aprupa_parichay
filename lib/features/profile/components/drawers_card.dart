// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:aprupa_parichay/app/component/spaces.dart';
import 'package:aprupa_parichay/features/drawers/pages/drawer_detail.dart';
import 'package:flutter/material.dart';

class DrawerCard extends StatefulWidget {
  DrawerCard({super.key, required this.index});
  int index;
  @override
  State<DrawerCard> createState() => _DrawerCardState();
}

class _DrawerCardState extends State<DrawerCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return DrawerDetail();
        }));
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 17),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 35),
        decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(20)),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Summer Outfits",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                Text("${widget.index * 5} Products")
              ],
            ),
            horizontalSapce(30),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        "assets/${widget.index}.jpg",
                        width: 100,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    horizontalSapce(10),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        "assets/${widget.index + 1}.jpg",
                        width: 100,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        "assets/${widget.index - 1}.jpg",
                        width: 100,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    horizontalSapce(10),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        "assets/${widget.index + 2}.jpg",
                        width: 100,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
