import 'package:flutter/material.dart';

class Mytheme {
  static Color lightBlue = const Color(0xff5D9CEC);
  static Color white = const Color(0xffffffff);
  static Color black = const Color(0xff000000);
  static Color gray = const Color(0xFF9D9D9E);
  static Color green = const Color(0xff61E757);
  static Color red = const Color(0xffEC4B4B);
  static Color backgroundColorLight = const Color(0xffDFECDB);
  static Color backgroundColorDark = const Color(0xff060E1E);

  static ThemeData myTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      //Bottom Navigation Bar Theme Lable And ICons:-
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: white,
          selectedLabelStyle: const TextStyle(fontSize: 12),
          selectedItemColor: lightBlue,
          unselectedItemColor: gray),

      //Theme for Text :-
      textTheme: const TextTheme(
        bodyLarge: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        bodyMedium: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        bodySmall: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
      ));
}
