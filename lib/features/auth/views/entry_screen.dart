// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:aprupa_parichay/app/component/custom_button.dart';
import 'package:aprupa_parichay/app/component/spaces.dart';
import 'package:aprupa_parichay/app/constants/colors.dart';
import 'package:aprupa_parichay/features/auth/views/login_page.dart';

import 'package:aprupa_parichay/features/auth/views/register_screen.dart';
import 'package:aprupa_parichay/global_variables.dart';
import 'package:flutter/material.dart';

class EntryScreen extends StatefulWidget {
  const EntryScreen({super.key});

  @override
  State<EntryScreen> createState() => EntryScreenState();
}

class EntryScreenState extends State<EntryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Stack(
          children: [
            Positioned(
              top: 150,
              child: Image.asset(
                  width: GlobalVariable.width - 20, "assets/entry/3.jpeg"),
            ),
            Positioned(
                bottom: 0,
                child: Container(
                  width: GlobalVariable.width,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset("assets/logos/logo.png"),
                      CustomButton(
                        width: GlobalVariable.width - 60,
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) {
                            return LoginPage();
                          }));
                        },
                        text: "Login",
                        textSize: 18,
                        backgroundColor: primarColor.shade600,
                        textColor: Colors.white,
                        paddingVertical: 18,
                      ),
                      verticalSpace(10),
                      CustomButton(
                        width: GlobalVariable.width - 60,
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) {
                            return RegisterPage();
                          }));
                        },
                        text: "Register",
                        textSize: 18,
                        backgroundColor: Colors.white,
                        textColor: Colors.black,
                        paddingVertical: 18,
                        borderWidth: 0.6,
                        borderColor: Colors.black,
                      ),
                      verticalSpace(50),
                      Text(
                        "Continue as a guest",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: primarColor.shade700),
                      )
                    ],
                  ),
                ))
          ],
        ),
      )),
    );
  }
}
