// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:aprupa_parichay/app/component/custom_button.dart';

import 'package:aprupa_parichay/app/component/lines.dart';
import 'package:aprupa_parichay/features/products/components/outfit_rec.dart';
import 'package:aprupa_parichay/features/products/components/product_desc.dart';
import 'package:aprupa_parichay/features/products/components/product_display.dart';
import 'package:aprupa_parichay/features/products/components/tag_section.dart';
import 'package:aprupa_parichay/global_variables.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({super.key});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      child: SingleChildScrollView(
        child: Column(
          children: [
            ProductDisplay(),
            ProductDesc(),
            SizedBox(
              height: 10,
            ),
            horizontal_line(context, 1),
            TagSection(
              tags: ["Vintage", "Glam", "Durable"],
            ),
            horizontal_line(context, 1),
            CompleteOutfit(),
            horizontal_line(context, 1),
            SizedBox(
              height: 10,
            ),
            CustomButton(
              onTap: (){},
              width: GlobalVariable.width - 40,
              backgroundColor: Color.fromRGBO(97, 79, 224, 1),
              textColor: Colors.white,
              rounded: 16,
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    ));
  }
}
