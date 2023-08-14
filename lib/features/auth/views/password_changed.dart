// ignore_for_file: prefer_const_constructors

import 'package:aprupa_parichay/app/component/custom_button.dart';
import 'package:aprupa_parichay/app/component/spaces.dart';
import 'package:aprupa_parichay/app/constants/colors.dart';
import 'package:aprupa_parichay/features/auth/views/login_page.dart';
import 'package:aprupa_parichay/global_variables.dart';
import 'package:flutter/material.dart';

class PasswordChanged extends StatelessWidget {
  const PasswordChanged({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: GlobalVariable.height,
        color: Colors.black,
        child: Center(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/Successmark.png"),
            verticalSpace(30),
            Text(
              "Password Chaged!",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
            verticalSpace(10),
            Text(
              "You can now login with your new password.",
              style: TextStyle(color: Colors.white),
            ),
            verticalSpace(20),
            CustomButton(
              width: GlobalVariable.width - 100,
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return LoginPage();
                }));
              },
              text: "Back to Login",
              textColor: Colors.white,
              backgroundColor: primarColor,
              paddingVertical: 20,
            )
          ],
        )),
      ),
    );
  }
}
