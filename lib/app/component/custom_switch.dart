import 'package:aprupa_parichay/app/component/spaces.dart';
import 'package:aprupa_parichay/app/constants/colors.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';

class CustomSwitch extends StatefulWidget {
  CustomSwitch(
      {super.key,
      required this.text,
      required this.desc,
      required this.switchColor});
  String text;
  String desc;
  Color switchColor;

  @override
  State<CustomSwitch> createState() => CustomSwitchState();
}

class CustomSwitchState extends State<CustomSwitch> {
  bool isSecret = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.text,
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                ),
                verticalSpace(10),
                AutoSizeText(
                  widget.desc,
                  maxLines: 2,
                  style: TextStyle(
                      fontWeight: FontWeight.w200,
                      fontSize: 16,
                      letterSpacing: 0.7),
                ),
              ],
            ),
          ),
          // Switch(
          //   trackColor: MaterialStateProperty.resolveWith<Color?>(
          //       (Set<MaterialState> states) {
          //     if (states.contains(MaterialState.focused)) {
          //       return Colors.orange.withOpacity(.48);
          //     }
          //     return null; // Use the default color.
          //   }),
          //   activeColor: primarColor,
          //   value: isSecret,
          //   onChanged: (value) {
          //     setState(() {
          //       isSecret = value;
          //     });
          //   },
          // )
          AdvancedSwitch(
            activeColor: primarColor,
            enabled: isSecret,
            borderRadius: BorderRadius.circular(60),
            controller: ValueNotifier(true),
          ),
        ],
      ),
    );
  }
}
