import 'package:aprupa_parichay/app/component/spaces.dart';
import 'package:aprupa_parichay/app/constants/colors.dart';
import 'package:aprupa_parichay/features/cart/components/checkout_progress.dart';
import 'package:aprupa_parichay/features/cart/views/checkout_address.dart';
import 'package:aprupa_parichay/features/cart/views/confirm_payment.dart';
import 'package:aprupa_parichay/features/cart/views/payment_detail.dart';
import 'package:aprupa_parichay/global_variables.dart';
import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';

class Checkout extends StatefulWidget {
  const Checkout({super.key});

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  int activeStep = 0;
  void updateStateValue(int newValue) {
    setState(() {
      activeStep = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
            top: MediaQuery.of(context).padding.top,
            left: 20,
            right: 20,
            bottom: 10),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back_ios)),
                horizontalSapce(10),
                CheckoutProgress(
                  activeStep: activeStep,
                  onUpdateStateValue: updateStateValue,
                ),
              ],
            ),
            verticalSpace(15),
            if (activeStep == 0)
              CheckoutAddress(onUpdateStateValue: updateStateValue)
            else if (activeStep == 1)
              PaymentDetails(onUpdateStateValue: updateStateValue)
            else
              ConfirmOrder()
          ],
        ),
      ),
    );
  }
}
