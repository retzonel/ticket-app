import 'package:flutter/material.dart';

Color primary = const Color(0xFF687daf);

class AppStyles {
  static Color primaryColor = primary;
  static Color textColor = Color(0xFF3b3b3b);
  static Color bgColor = Color(0xFFeeedf2);
  static Color ticketBlue = const Color(0xFF526799);
  static Color ticketOrange = const Color(0xFFf37b67);
  static Color kakiColor = const Color(0xFFd2bd26);

  static TextStyle textStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: textColor,
  );
  static TextStyle headLineStyle1 = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.bold,
    color: textColor,
  );
  static TextStyle headLineStyle2 = TextStyle(
    fontSize: 21,
    fontWeight: FontWeight.bold,
    color: textColor,
  );
  static TextStyle headLineStyle3 = const TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w700,
  );
  static TextStyle headLineStyle4 = const TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w700,
  );
}
