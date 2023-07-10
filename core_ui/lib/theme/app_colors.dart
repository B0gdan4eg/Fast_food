import 'package:flutter/material.dart';

class AppColors {
  static const Color lightLettuce = Color.fromRGBO(216, 243, 220, 1);
  static const Color primaryColor = Color.fromRGBO(116, 198, 157, 1);
  static const Color green = Color.fromRGBO(82, 183, 136, 1);
  static const Color darkGreen = Color.fromRGBO(9, 38, 25, 1.0);
  static const Color white = Color.fromRGBO(254, 254, 254, 1);
  static const Color shadowWhite = Color.fromRGBO(244, 244, 244, 1);
  static const Color shadowBlack = Color.fromARGB(10, 2, 32, 44);
  static const Color transparent = Color.fromRGBO(0, 0, 0, 0);
  static const Color lightThemeBackground = Color.fromRGBO(250, 250, 250, 1);
  static const Color darkThemeBackground = Color.fromRGBO(48, 47, 47, 1);
  static const Color black = Color.fromRGBO(0, 0, 0, 1);

  static const LinearGradient primaryGradient = LinearGradient(
    colors: [
      green,
      primaryColor,
    ],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );
}
