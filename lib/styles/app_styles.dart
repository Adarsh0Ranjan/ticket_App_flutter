import 'package:flutter/material.dart';

Color primary = const Color(0xFF687daf);

class AppStyles {
  static Color primaryColor = primary;
  static Color textColor = const Color(0xFF3b3b3b);
  static Color bgColor = Color(0xFFeeedf2);

  static TextStyle headLineStyle1 = TextStyle(
      fontSize: 26,
      fontWeight: FontWeight.bold,
      color: AppStyles.textColor
  );

  static TextStyle headLineStyle2 = TextStyle(
      fontSize: 21,
      fontWeight: FontWeight.bold,
      color: AppStyles.textColor
  );

  static TextStyle headLineStyle3 = TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.w500,
      color: AppStyles.textColor
  );
  static TextStyle headLineStyle4 = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: AppStyles.textColor
  );

  static TextStyle textStyle = TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.w500,
      color: AppStyles.textColor
  );

  static Color ticketBlue = const Color(0xFF526799);
  static Color ticketOrange = const Color(0xFFF37B67);
  static Color kakiColor = const Color(0xFFd2bdb6);
  static Color plainColor = const Color(0xFFBFC2DF);
  static Color findTicketColor = const Color(0xD91130CE);


}