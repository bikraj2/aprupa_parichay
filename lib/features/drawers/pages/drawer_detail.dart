// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:aprupa_parichay/app/component/custom_icon.dart';
import 'package:aprupa_parichay/app/component/custom_switch.dart';
import 'package:aprupa_parichay/app/component/lines.dart';
import 'package:aprupa_parichay/app/component/spaces.dart';
import 'package:aprupa_parichay/app/constants/colors.dart';
import 'package:aprupa_parichay/features/drawers/views/drawer_products.dart';
import 'package:aprupa_parichay/features/products/views/product_card_feed.dart';
import 'package:aprupa_parichay/global_variables.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class DrawerDetail extends StatefulWidget {
  const DrawerDetail({super.key});

  @override
  State<DrawerDetail> createState() => _DrawerDetailState();
}

class _DrawerDetailState extends State<DrawerDetail>
    with TickerProviderStateMixin {
  late TabController _tabController;

  bool visible_outfit_idea = false;
  bool visible_edit_drawer = false;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              height: GlobalVariable.height,
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).padding.top,
                  left: 20,
                  right: 20,
                  bottom: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(Icons.arrow_back),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      InkWell(
                        onTap: () {
                          showModalBottomSheet(
                              constraints: BoxConstraints(maxHeight: 350),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              context: context,
                              builder: (context) {
                                return DraggableScrollableSheet(
                                    initialChildSize: 1,
                                    builder: (_, scrollController) {
                                      return Container(
                                        padding: EdgeInsets.all(20),
                                        child: Column(
                                          children: [
                                            verticalSpace(15),
                                            Center(
                                              child: Text(
                                                "More actions",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.w300),
                                              ),
                                            ),
                                            verticalSpace(20),
                                            InkWell(
                                              onTap: () {
                                                setState(() {
                                                  visible_edit_drawer = true;
                                                });
                                              },
                                              child: actionCard("Edit Drawer",
                                                  Icons.settings_outlined),
                                            ),
                                            verticalSpace(10),
                                            actionCard("Reorder Drawer",
                                                Icons.sort_rounded),
                                            verticalSpace(10),
                                            actionCard("Share Drawer",
                                                Icons.share_outlined)
                                          ],
                                        ),
                                      );
                                    });
                              });
                        },
                        child: CustomIcon(
                          img: "assets/logos/dots.png",
                          color: Colors.transparent,
                        ),
                      )
                    ],
                  ),
                  verticalSpace(30),
                  Text(
                    "Summer Outfits",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                  ),
                  verticalSpace(10),
                  Text(
                    "27 products - Edited 15m ago",
                    style: TextStyle(
                        fontWeight: FontWeight.w400, color: Colors.grey),
                  ),
                  verticalSpace(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          showModalBottomSheet(
                              constraints: BoxConstraints(maxHeight: 350),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              context: context,
                              builder: (context) {
                                return DraggableScrollableSheet(
                                    initialChildSize: 1,
                                    builder: (_, scrollController) {
                                      return Container(
                                        padding: EdgeInsets.all(20),
                                        child: Column(
                                          children: [
                                            verticalSpace(20),
                                            Text(
                                              "Sort By",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            verticalSpace(20),
                                            RadioExample(),
                                          ],
                                        ),
                                      );
                                    });
                              });
                        },
                        child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                border: Border.all(width: 0.3),
                                borderRadius: BorderRadius.circular(9)),
                            clipBehavior: Clip.hardEdge,
                            child: Image.asset("assets/logos/sort_by.png")),
                      ),
                      horizontalSapce(10),
                      InkWell(
                        onTap: () {
                          setState(() {
                            visible_outfit_idea = true;
                          });
                        },
                        child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: primarColor,
                                border: Border.all(width: 0.3),
                                borderRadius: BorderRadius.circular(9)),
                            clipBehavior: Clip.hardEdge,
                            child: Image.asset("assets/logos/bulb.png")),
                      ),
                    ],
                  ),
                  verticalSpace(20),
                  TabBar(
                    isScrollable: true,
                    indicatorPadding:
                        const EdgeInsets.symmetric(horizontal: 20),
                    indicatorColor: Colors.black,
                    controller: _tabController,
                    tabs: const [
                      Text(
                        "All",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "Dresses",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "Denim",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "Tops",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  Expanded(
                      child: TabBarView(controller: _tabController, children: [
                    DrawerProducts(),
                    DrawerProducts(),
                    DrawerProducts(),
                    DrawerProducts()
                  ])),
                ],
              ),
            ),
          ),
          Visibility(
            visible: visible_outfit_idea,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                height: GlobalVariable.height,
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).padding.top,
                    left: 20,
                    right: 20,
                    bottom: 20),
                decoration: BoxDecoration(color: Colors.white),
                child: Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.close,
                            size: 27,
                          ),
                          onPressed: () {
                            setState(() {
                              visible_outfit_idea = false;
                            });
                          },
                        ),
                      ],
                    ),
                    Center(
                      child: CustomIcon(
                        img: "assets/logos/bulb.png",
                        color: Colors.transparent,
                      ),
                    ),
                    verticalSpace(10),
                    Text(
                      "More ideas for: \nSummer Outfits",
                      style:
                          TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
                    ),
                    DrawerProducts(),
                  ],
                ),
              ),
            ),
          ),
          Visibility(
            visible: visible_edit_drawer,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                height: GlobalVariable.height,
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).padding.top,
                    left: 20,
                    right: 20,
                    bottom: 20),
                decoration: BoxDecoration(color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.close,
                            size: 27,
                          ),
                          onPressed: () {
                            setState(() {
                              visible_edit_drawer = false;
                            });
                          },
                        ),
                        Expanded(
                          child: Center(
                            child: Text(
                              "Edit Drawer",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 16),
                            ),
                          ),
                        )
                      ],
                    ),
                    verticalSpace(20),
                    verticalSpace(20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Name"),
                        Text(
                          "Summer Outfits",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 16),
                        )
                      ],
                    ),
                    horizontal_line(context, 1),
                    verticalSpace(20),
                    horizontal_line(context, 1),
                    verticalSpace(20),
                    Column(
                      children: [
                        CustomSwitch(
                          text: 'Secret Board',
                          desc:
                              "No one but you can view access to this drawer, even with the custom URL",
                          switchColor: primarColor,
                        ),
                        verticalSpace(20),
                        CustomSwitch(
                          text: 'Recommendations on Feed',
                          desc: "Show products related to this drawer in feed.",
                          switchColor: primarColor,
                        )
                      ],
                    ),
                    verticalSpace(40),
                    horizontal_line(context, 1),
                    InkWell(
                      splashFactory: NoSplash.splashFactory,
                      onTap: () {
                        showModalBottomSheet(
                            constraints: BoxConstraints(maxHeight: 300),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            context: context,
                            builder: (context) {
                              return DraggableScrollableSheet(
                                  initialChildSize: 1,
                                  builder: (_, scrollController) {
                                    return Container(
                                      padding: EdgeInsets.all(20),
                                      child: Column(
                                        children: [
                                          verticalSpace(15),
                                          Center(
                                            child: Text(
                                              "Delete drawer?",
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ),
                                          verticalSpace(20),
                                          AutoSizeText(
                                            "By deleting this drawer, you'll lose all the products saved in it. You can't undo this.",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w200,
                                                letterSpacing: 0.9),
                                          ),
                                          verticalSpace(40),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              InkWell(
                                                  child: Container(
                                                      alignment:
                                                          Alignment.center,
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              vertical: 15,
                                                              horizontal: 45),
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(12),
                                                          border: Border.all(
                                                              width: 0.6,
                                                              color:
                                                                  Colors.grey)),
                                                      child: Text(
                                                        "Cancel",
                                                        style: TextStyle(
                                                            fontSize: 18,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400),
                                                      ))),
                                              horizontalSapce(10),
                                              InkWell(
                                                  child: Container(
                                                      alignment:
                                                          Alignment.center,
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              vertical: 15,
                                                              horizontal: 45),
                                                      decoration: BoxDecoration(
                                                        color: primarColor,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12),
                                                      ),
                                                      child: Text(
                                                        "Delete",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 18,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400),
                                                      ))),
                                            ],
                                          )
                                        ],
                                      ),
                                    );
                                  });
                            });
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Delete drawer",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 16),
                            ),
                            Icon(Icons.delete_outline)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

Widget actionCard(String text, IconData icon) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        Icon(icon)
      ],
    ),
  );
}

class RadioExample extends StatefulWidget {
  const RadioExample({super.key});

  @override
  State<RadioExample> createState() => _RadioExampleState();
}

enum SortByOption { lastSaved, Alphabetically, CustomOrder }

class _RadioExampleState extends State<RadioExample> {
  SortByOption? _character = SortByOption.lastSaved;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        InkWell(
          splashFactory: NoSplash.splashFactory,
          onTap: () {
            setState(() {
              _character = SortByOption.lastSaved;
            });
          },
          child: Container(
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: _character == SortByOption.lastSaved
                    ? primarColor.shade50
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(12)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Last Saved",
                    style:
                        TextStyle(fontWeight: FontWeight.w300, fontSize: 16)),
                Radio(
                    activeColor: primarColor,
                    value: _character,
                    groupValue: SortByOption.lastSaved,
                    onChanged: (val) {
                      setState(() {
                        _character = val;
                      });
                    })
              ],
            ),
          ),
        ),
        InkWell(
          splashFactory: NoSplash.splashFactory,
          onTap: () {
            setState(() {
              _character = SortByOption.Alphabetically;
            });
          },
          child: Container(
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: _character == SortByOption.Alphabetically
                    ? primarColor.shade50
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(12)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Alphabetically (A-Z)",
                    style:
                        TextStyle(fontWeight: FontWeight.w300, fontSize: 16)),
                Radio(
                    activeColor: primarColor,
                    value: _character,
                    groupValue: SortByOption.Alphabetically,
                    onChanged: (val) {
                      setState(() {
                        _character = val;
                      });
                    })
              ],
            ),
          ),
        ),
        InkWell(
          splashFactory: NoSplash.splashFactory,
          onTap: () {
            setState(() {
              _character = SortByOption.CustomOrder;
            });
          },
          child: Container(
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: _character == SortByOption.CustomOrder
                    ? primarColor.shade50
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(12)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Custom order",
                    style:
                        TextStyle(fontWeight: FontWeight.w300, fontSize: 16)),
                Radio(
                    activeColor: primarColor,
                    value: _character,
                    groupValue: SortByOption.CustomOrder,
                    onChanged: (val) {
                      setState(() {
                        _character = val;
                      });
                    })
              ],
            ),
          ),
        ),
      ],
    );
  }
}
