// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:aprupa_parichay/app/component/custom_button.dart';
import 'package:aprupa_parichay/app/component/lines.dart';
import 'package:aprupa_parichay/app/component/spaces.dart';
import 'package:aprupa_parichay/app/constants/colors.dart';
import 'package:aprupa_parichay/app/constants/hex_colors.dart';
import 'package:aprupa_parichay/features/auth/components/placeholder_auth.dart';
import 'package:aprupa_parichay/features/auth/views/password_changed.dart';
import 'package:aprupa_parichay/global_variables.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isValid = true;

  void _validateInput(String? value) {
    if (value != null) {
      setState(() {
        _isValid = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value);
      });
    }
  }

  FocusNode firstNode = FocusNode();
  FocusNode secondNode = FocusNode();
  FocusNode thirdNode = FocusNode();
  FocusNode fourthNode = FocusNode();
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
                          "Welcome back!\nSign In.",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 34,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  verticalSpace(50),
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
                                        "Password",
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 16),
                                      ),
                                      suffixIcon:
                                          Icon(Icons.remove_red_eye_sharp),
                                      hintStyle: TextStyle(
                                          fontWeight: FontWeight.w300,
                                          letterSpacing: 0.2),
                                      hintText: "Enter your password",
                                      fillColor: Colors.grey.shade50,
                                      filled: true,
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide.none)),
                                ),
                              ),
                            ],
                          ),
                          verticalSpace(10),
                          Row(
                            children: [
                              Checkbox(
                                value: isTrue,
                                onChanged: (va) {
                                  setState(() {
                                    isTrue = va!;
                                  });
                                },
                              ),
                              Text(
                                "Stay Signed in?",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w300),
                              )
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.only(right: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return AuthPlaceholder(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              verticalSpace(10),
                                              SizedBox(
                                                height: 60,
                                                width:
                                                    GlobalVariable.width - 80,
                                                child: TextFormField(
                                                  decoration: InputDecoration(
                                                      label: Text(
                                                        "Email",
                                                        style: TextStyle(
                                                            color: Colors.grey,
                                                            fontSize: 16),
                                                      ),
                                                      hintStyle: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          letterSpacing: 0.2),
                                                      hintText:
                                                          "Enter your email",
                                                      fillColor:
                                                          Colors.grey.shade50,
                                                      filled: true,
                                                      border:
                                                          OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide
                                                                      .none)),
                                                ),
                                              ),
                                            ],
                                          ),
                                          title: "Forgot Password",
                                          desc:
                                              "Forgot your password again?\nDon't you worry we got you covered.",
                                          button: "Send Code",
                                          callbackFnc: () {
                                            Navigator.push(context,
                                                MaterialPageRoute(
                                                    builder: (context) {
                                              return AuthPlaceholder(
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      otp(context, firstNode,
                                                          secondNode),
                                                      otp(context, secondNode,
                                                          thirdNode),
                                                      otp(context, thirdNode,
                                                          fourthNode),
                                                      otp(context, fourthNode,
                                                          firstNode)
                                                    ],
                                                  ),
                                                  title: "OTP Verification",
                                                  desc:
                                                      "Enter the 4 digit Code.",
                                                  button: "Verify",
                                                  callbackFnc: () {
                                                    Navigator.push(context,
                                                        MaterialPageRoute(
                                                            builder: (context) {
                                                      return AuthPlaceholder(
                                                          child: Column(
                                                            children: [
                                                              Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  verticalSpace(
                                                                      10),
                                                                  SizedBox(
                                                                    height: 60,
                                                                    width: GlobalVariable
                                                                            .width -
                                                                        80,
                                                                    child:
                                                                        TextFormField(
                                                                      decoration: InputDecoration(
                                                                          label: Text(
                                                                            "Password",
                                                                            style:
                                                                                TextStyle(color: Colors.grey, fontSize: 16),
                                                                          ),
                                                                          suffixIcon: Icon(Icons.remove_red_eye_sharp),
                                                                          hintStyle: TextStyle(fontWeight: FontWeight.w300, letterSpacing: 0.2),
                                                                          hintText: "Enter your New password",
                                                                          fillColor: Colors.grey.shade50,
                                                                          filled: true,
                                                                          border: OutlineInputBorder(borderSide: BorderSide.none)),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              verticalSpace(20),
                                                              Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  verticalSpace(
                                                                      10),
                                                                  SizedBox(
                                                                    height: 60,
                                                                    width: GlobalVariable
                                                                            .width -
                                                                        80,
                                                                    child:
                                                                        TextFormField(
                                                                      decoration: InputDecoration(
                                                                          label: Text(
                                                                            "Confirm Password",
                                                                            style:
                                                                                TextStyle(color: Colors.grey, fontSize: 16),
                                                                          ),
                                                                          suffixIcon: Icon(Icons.remove_red_eye_sharp),
                                                                          hintStyle: TextStyle(fontWeight: FontWeight.w300, letterSpacing: 0.2),
                                                                          hintText: "Confirm your password.",
                                                                          fillColor: Colors.grey.shade50,
                                                                          filled: true,
                                                                          border: OutlineInputBorder(borderSide: BorderSide.none)),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                          title:
                                                              "Create New Password",
                                                          desc:
                                                              "Enter a unique password \nthat is harder to guess.",
                                                          button:
                                                              "Reset Password",
                                                          callbackFnc: () {
                                                            Navigator.push(
                                                                context,
                                                                MaterialPageRoute(
                                                                    builder:
                                                                        (context) {
                                                              return PasswordChanged();
                                                            }));
                                                          },
                                                          bottomText1:
                                                              "Remember your old password?",
                                                          bottomText2: "login");
                                                    }));
                                                  },
                                                  bottomText1:
                                                      "Didn't Recieve code?",
                                                  bottomText2: "Resend");
                                            }));
                                          },
                                          bottomText1: "Remember Password?",
                                          bottomText2: "Login");
                                    }));
                                  },
                                  child: Text(
                                    "Forgot password?",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black54),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          verticalSpace(20),
                          CustomButton(
                            rounded: 10,
                            paddingVertical: 18,
                            width: GlobalVariable.width - 80,
                            onTap: () {},
                            textColor: Colors.white,
                            backgroundColor: primarColor,
                            text: "Login",
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
                                        "or Login With",
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.black87),
                                      )))
                            ],
                          ),
                          verticalSpace(10),
                          socialLogin(context, "assets/facebook.png",
                              "Facebook", HexColor("1877F2"), Colors.white),
                          verticalSpace(7),
                          Card(
                            child: socialLogin(context, "assets/google.png",
                                "Google", Colors.white, Colors.black87),
                          ),
                          verticalSpace(7),
                          socialLogin(context, "assets/apple.png", "Apple",
                              Colors.black, Colors.white),
                          verticalSpace(50),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Don't have an account?"),
                              horizontalSapce(2),
                              Text(
                                "Register",
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

Widget socialLogin(BuildContext context, String img, String name, Color bgColor,
    Color textColor) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 11, horizontal: 10),
    width: GlobalVariable.width - 80,
    decoration:
        BoxDecoration(color: bgColor, borderRadius: BorderRadius.circular(12)),
    child: Row(
      children: [
        Image.asset(img),
        horizontalSapce(13),
        Text(
          "Continue with ${name}",
          style: TextStyle(
              color: textColor, fontSize: 17, fontWeight: FontWeight.w500),
        )
      ],
    ),
  );
}

Widget otp(BuildContext context, FocusNode currentNode, FocusNode nextNode) {
  return SizedBox(
    width: 70,
    height: 50,
    child: TextFormField(
      focusNode: currentNode,
      style: TextStyle(
        color: primarColor,
        fontSize: 24,
      ),
      onChanged: (val) {
        if (val.length >= 1) {
          print("here");
          FocusScope.of(context).requestFocus(nextNode);
        }
      },
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        focusColor: primarColor,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: primarColor, width: 2.0),
          borderRadius: BorderRadius.circular(8.0),
        ),
        border: OutlineInputBorder(),
      ),
    ),
  );
}
