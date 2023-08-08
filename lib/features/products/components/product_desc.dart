import 'package:flutter/material.dart';

class ProductDesc extends StatefulWidget {
  const ProductDesc({super.key});

  @override
  State<ProductDesc> createState() => _ProductDescState();
}

class _ProductDescState extends State<ProductDesc> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Details",
            style: TextStyle(
              color: Color(0xFF272728),
              fontSize: 20,
              fontFamily: 'HeyWow',
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Description',
            style: TextStyle(
              color: Color(0xFF272728),
              fontSize: 16,
              fontFamily: 'HeyWow',
              fontWeight: FontWeight.w600,
              height: 1.62,
              letterSpacing: 0.32,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "These are the Mom Jeans you've been looking for. Let loose with this modern interpretation of a classic '90s style, featuring a flattering high rise and stacked, tapered leg. These jeans are designed to be worn as a relaxed, loose style.\n- Waist-emphasizing high rise \n- Relaxed fit for a vintage-inspired look\n- Tapered leg for tailored style\n- Sustainably made with TENCEL™ fabric",
            style: TextStyle(
              color: Color(0xFF575758),
              fontSize: 16,
              fontFamily: 'HeyWow',
              fontWeight: FontWeight.w400,
              height: 1.62,
              letterSpacing: 0.32,
            ),
          ),
        ],
      ),
    );
  }
}
