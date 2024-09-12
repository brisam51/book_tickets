import 'package:flutter/material.dart';

Color primary = const Color(0xFF687daf);

class AppStyle {
  static Color colorPrimary = primary;
  static Color bgColor = const Color(0xfffFF1DB);
  static Color ticketColor = const Color(0xff062158);
  static Color blueColor = const Color(0xFFFFFFFF);
  static Color textColor = const Color(0xFF3b3b3b);
  static Color planColor = const Color(0x9E2E3C71);
  static Color bgButton = const Color(0xFF24a0ed);
  static TextStyle heedLine1 = TextStyle(
    fontSize: 30.5,
    fontWeight: FontWeight.bold,
    color: textColor,
  );
  static TextStyle heedLine2 = TextStyle(
    fontSize: 22.5,
    fontWeight: FontWeight.bold,
    color: textColor,
  );

  static TextStyle heedLine3 =
      const TextStyle(fontSize: 17.5, fontWeight: FontWeight.bold);
  static TextStyle heedLine4 =
      const TextStyle(fontSize: 14.5, fontWeight: FontWeight.bold);
}
