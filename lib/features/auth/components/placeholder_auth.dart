// ignore_for_file: prefer_const_constructors

import 'package:aprupa_parichay/app/component/spaces.dart';
import 'package:aprupa_parichay/app/constants/colors.dart';
import 'package:aprupa_parichay/global_variables.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rive/rive.dart';

import '../../../app/component/custom_button.dart';

class AuthPlaceholder extends StatefulWidget {
  AuthPlaceholder(
      {super.key,
      required this.child,
      required this.title,
      required this.desc,
      required this.button,
      required this.callbackFnc,
      required this.bottomText1,
      required this.bottomText2});
  Widget child;
  String title, desc, button, bottomText1, bottomText2;
  VoidCallback callbackFnc;

  @override
  State<AuthPlaceholder> createState() => _AuthPlaceholderState();
}

class _AuthPlaceholderState extends State<AuthPlaceholder> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarBrightness: Brightness.dark,
      ),
      child: Scaffold(
        body: Container(
          color: Colors.black,
          padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
          child: Stack(
            children: [
              Container(
                child: RiveAnimation.asset("assets/meteors.riv"),
              ),
              Container(
                width: GlobalVariable.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    verticalSpace(200),
                    Container(
                      width: GlobalVariable.width - 40,
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                                padding: EdgeInsets.only(
                                    top: 10, left: 10, right: 0, bottom: 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        width: 0.1, color: Colors.black)),
                                child: Icon(Icons.arrow_back_ios)),
                          ),
                          verticalSpace(20),
                          horizontalSapce(10),
                          Text(
                            widget.title,
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.w500),
                          ),
                          verticalSpace(15),
                          Text(
                            widget.desc,
                            style: TextStyle(
                                fontWeight: FontWeight.w300, fontSize: 16),
                          ),
                          verticalSpace(20),
                          widget.child,
                          verticalSpace(30),
                          CustomButton(
                            rounded: 10,
                            paddingVertical: 15,
                            width: GlobalVariable.width - 80,
                            onTap: widget.callbackFnc,
                            textColor: Colors.white,
                            backgroundColor: primarColor,
                            text: widget.button,
                            textSize: 18,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  width: GlobalVariable.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(70),
                          topRight: Radius.circular(70))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        widget.bottomText1,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      horizontalSapce(5),
                      Text(
                        widget.bottomText2,
                        style: TextStyle(
                            color: primarColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      verticalSpace(80)
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
