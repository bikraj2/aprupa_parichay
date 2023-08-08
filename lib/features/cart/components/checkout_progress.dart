import 'package:aprupa_parichay/app/constants/colors.dart';
import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';

import '../../../global_variables.dart';

class CheckoutProgress extends StatefulWidget {
  CheckoutProgress({
    super.key,
    required this.activeStep,
  });

  int activeStep;

  @override
  State<CheckoutProgress> createState() => _CheckoutProgressState();
}

class _CheckoutProgressState extends State<CheckoutProgress> {
  @override
  Widget build(BuildContext context) {
    return EasyStepper(
      activeStep: widget.activeStep,
      lineLength: (GlobalVariable.width - 90) / 3,
      lineSpace: 0,
      lineType: LineType.normal,
      defaultLineColor: primarColor.shade100,
      finishedLineColor: primarColor,
      activeStepTextColor: Colors.black87,
      finishedStepTextColor: Colors.black87,
      internalPadding: 0,
      showLoadingAnimation: false,
      stepRadius: 11,
      showStepBorder: false,
      lineDotRadius: 1.5,
      steps: [
        EasyStep(
          customStep: CircleAvatar(
            radius: 11,
            backgroundColor:
                widget.activeStep >= 0 ? primarColor : Colors.white,
            child: CircleAvatar(
              radius: 9,
              backgroundColor:
                  widget.activeStep >= 0 ? Colors.white : primarColor.shade100,
              child: CircleAvatar(
                radius: 6,
                backgroundColor:
                    widget.activeStep >= 0 ? primarColor : primarColor.shade100,
              ),
            ),
          ),
          title: 'Address',
        ),
        EasyStep(
          customStep: CircleAvatar(
            radius: 11,
            backgroundColor:
                widget.activeStep >= 1 ? primarColor : Colors.white,
            child: CircleAvatar(
              radius: 9,
              backgroundColor:
                  widget.activeStep >= 1 ? Colors.white : primarColor.shade100,
              child: CircleAvatar(
                radius: 6,
                backgroundColor:
                    widget.activeStep >= 1 ? primarColor : primarColor.shade100,
              ),
            ),
          ),
          title: 'Payment Details',
        ),
        EasyStep(
          customStep: CircleAvatar(
            radius: 11,
            backgroundColor:
                widget.activeStep >= 2 ? primarColor : Colors.white,
            child: CircleAvatar(
              radius: 9,
              backgroundColor:
                  widget.activeStep >= 2 ? Colors.white : primarColor.shade100,
              child: CircleAvatar(
                radius: 6,
                backgroundColor:
                    widget.activeStep >= 2 ? primarColor : primarColor.shade100,
              ),
            ),
          ),
          title: 'Confirm',
        ),
      ],
      onStepReached: (index) => setState(() => widget.activeStep = index),
    );
  }
}
