import 'package:aprupa_parichay/app/constants/hex_colors.dart';
import 'package:flutter/material.dart';

//Color Guides
// 50 :10
// 100:20
// 200:40
// 300:60
// 400:80
// 500:120
// 600:140
// 700: 160
// 800: 180
// 900 :190

Map<int, Color> colorCodes1 = {
  50: HexColor("#EFEDFC"),
  100: HexColor("#D3CEF6"),
  200: HexColor("#B6AEF1"),
  300: HexColor("#9A8EEB"),
  400: HexColor("#7D6FE6"),
  500: HexColor("#5041B8"),
  600: HexColor("#3E338F"),
  700: HexColor("#2D2467"),
  800: HexColor("#1B163F"),
  900: HexColor("#0A0816"),
};
// Green color code: FF93cd48
MaterialColor primarColor = MaterialColor(0xFF614FE0, colorCodes1);

Map<int, Color> colorCodes2 = {
  50: HexColor("#FFF2EF"),
  100: HexColor("#FFDAD1"),
  200: HexColor("#FFC3B3"),
  300: HexColor("#FFAB95"),
  400: HexColor("#FF9478"),
  500: HexColor("#D1664A"),
  600: HexColor("#A34F3A"),
  700: HexColor("#753929"),
  800: HexColor("#472319"),
  900: HexColor("#1A0C09"),
};
// Green color code: FF93cd48
MaterialColor secondaryColor = MaterialColor(0xFFFF7C5A, colorCodes2);

Map<int, Color> colorCodes3 = {
  50: HexColor("#FFF1DC"),
  200: HexColor("#FFDCA5"),
  600: HexColor("#8C6933"),
  800: HexColor("#1A0C09"),
};
// Green color code: FF93cd48
MaterialColor yellowAccent = MaterialColor(0xFFFFBF5C, colorCodes3);
Map<int, Color> colorCodes4 = {
  50: HexColor("#D7FAF4"),
  200: HexColor("#97F2E2"),
  600: HexColor("#24806F"),
  800: HexColor("#0E312B"),
};
// Green color code: FF93cd48
MaterialColor greenAccent = MaterialColor(0xFF41E8CA, colorCodes4);

Map<int, Color> colorCodes5 = {
  50: HexColor("#FBF0FD"),
  200: HexColor("#EAADF4"),
  600: HexColor("#773A81"),
  800: HexColor("#2E1732"),
};
// Green color code: FF93cd48
MaterialColor purpleAccent = MaterialColor(0xFFD86AEAA, colorCodes5);
Map<int, Color> colorCodes6 = {
  50: HexColor("#FEEFEF"),
  200: HexColor("#F8A5A5"),
  600: HexColor("#853232"),
  800: HexColor("#331313"),
};
// Green color code: FF93cd48
MaterialColor redAccent = MaterialColor(0xFFF25B5B, colorCodes6);
