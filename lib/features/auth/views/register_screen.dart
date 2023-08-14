// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:aprupa_parichay/app/component/custom_button.dart';
import 'package:aprupa_parichay/app/component/lines.dart';
import 'package:aprupa_parichay/app/component/spaces.dart';
import 'package:aprupa_parichay/app/constants/colors.dart';
import 'package:aprupa_parichay/app/constants/hex_colors.dart';
import 'package:aprupa_parichay/global_variables.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _isValid = true;

  void _validateInput(String? value) {
    if (value != null) {
      setState(() {
        _isValid = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value);
      });
    }
  }

  TextEditingController emailController = TextEditingController();
  bool isTrue = false;
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarBrightness: Brightness.dark,
      ),
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(color: Colors.black),
            ),
            Container(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).padding.top,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                            )),
                        verticalSpace(20),
                        Text(
                          "Elevate Your Style,\nOne Tap at a Time!",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 34,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  verticalSpace(20),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(20),
                      width: GlobalVariable.width,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30))),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              verticalSpace(20),
                              SizedBox(
                                height: 60,
                                width: GlobalVariable.width - 80,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      suffixIcon:
                                          emailController!.text.trim().isEmpty
                                              ? null
                                              : _isValid
                                                  ? const Icon(
                                                      Icons.check_circle,
                                                      color: Colors.green,
                                                    )
                                                  : const Icon(
                                                      Icons.error,
                                                      color: Colors.yellow,
                                                    ),
                                      label: Text(
                                        "Username",
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 16),
                                      ),
                                      hintText: "Enter your username",
                                      fillColor: Colors.grey.shade50,
                                      hintStyle: TextStyle(
                                          fontWeight: FontWeight.w300,
                                          letterSpacing: 0.2),
                                      filled: true,
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide.none)),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              verticalSpace(20),
                              SizedBox(
                                height: 60,
                                width: GlobalVariable.width - 80,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      suffixIcon:
                                          emailController!.text.trim().isEmpty
                                              ? null
                                              : _isValid
                                                  ? const Icon(
                                                      Icons.check_circle,
                                                      color: Colors.green,
                                                    )
                                                  : const Icon(
                                                      Icons.error,
                                                      color: Colors.yellow,
                                                    ),
                                      label: Text(
                                        "Email",
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 16),
                                      ),
                                      hintText: "Enter your email",
                                      fillColor: Colors.grey.shade50,
                                      hintStyle: TextStyle(
                                          fontWeight: FontWeight.w300,
                                          letterSpacing: 0.2),
                                      filled: true,
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide.none)),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              verticalSpace(20),
                              SizedBox(
                                height: 60,
                                width: GlobalVariable.width - 80,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      suffixIcon:
                                          emailController!.text.trim().isEmpty
                                              ? null
                                              : _isValid
                                                  ? const Icon(
                                                      Icons.check_circle,
                                                      color: Colors.green,
                                                    )
                                                  : const Icon(
                                                      Icons.error,
                                                      color: Colors.yellow,
                                                    ),
                                      label: Text(
                                        "Password",
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 16),
                                      ),
                                      hintText: "Enter your password",
                                      fillColor: Colors.grey.shade50,
                                      hintStyle: TextStyle(
                                          fontWeight: FontWeight.w300,
                                          letterSpacing: 0.2),
                                      filled: true,
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide.none)),
                                ),
                              ),
                            ],
                          ),
                          verticalSpace(10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              verticalSpace(10),
                              SizedBox(
                                height: 60,
                                width: GlobalVariable.width - 80,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      label: Text(
                                        "Confrim password",
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 16),
                                      ),
                                      suffixIcon:
                                          Icon(Icons.remove_red_eye_sharp),
                                      hintStyle: TextStyle(
                                          fontWeight: FontWeight.w300,
                                          letterSpacing: 0.2),
                                      hintText: "Re-enter your password.",
                                      fillColor: Colors.grey.shade50,
                                      filled: true,
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide.none)),
                                ),
                              ),
                            ],
                          ),
                          verticalSpace(10),
                          verticalSpace(20),
                          CustomButton(
                            rounded: 10,
                            paddingVertical: 18,
                            width: GlobalVariable.width - 80,
                            onTap: () {},
                            textColor: Colors.white,
                            backgroundColor: primarColor,
                            text: "Register",
                            textSize: 18,
                          ),
                          verticalSpace(20),
                          Stack(
                            children: [
                              horizontal_line(context, 1),
                              Center(
                                  child: Container(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 10),
                                      color: Colors.white,
                                      child: Text(
                                        "or Register With",
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.black87),
                                      )))
                            ],
                          ),
                          verticalSpace(10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              socialIcon(
                                context,
                                "assets/facebook_blue.png",
                                true,
                              ),
                              horizontalSapce(10),
                              socialIcon(
                                context,
                                "assets/google.png",
                                false,
                              ),
                              horizontalSapce(10),
                              socialIcon(
                                  context, "assets/apple_black.png", false),
                              horizontalSapce(10),
                            ],
                          ),
                          verticalSpace(100),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Already have an account?"),
                              horizontalSapce(2),
                              Text(
                                "Login Now",
                                style: TextStyle(color: primarColor),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget socialIcon(BuildContext context, String img, bool isFb) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
    decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.grey.shade300,
        ),
        borderRadius: BorderRadius.circular(12)),
    child: isFb
        ? ImageIcon(
            AssetImage(
              img,
            ),
            color: Colors.blue,
          )
        : Image.asset(img),
  );
}
