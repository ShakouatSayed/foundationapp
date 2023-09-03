import 'package:flutter/material.dart';
import 'package:foundationapp/config/themes/sub_theme_data.dart';

const Color primaryDarkColorDark = Color(0xFF3ec62);
const Color primaryColorDark = Color(0xFF3d6e3e21);
const Color primaryColor = Color(0xFF3d6e31);
const Color primaryColor1 = Color(0xFF3d6e56);
const Color mainDarkTextColor = Colors.black;

class DarkTheme with SubThemeData {
  final ThemeData systemDarkTheme = ThemeData.dark();
  ThemeData buildDarkTheme() {
    return systemDarkTheme.copyWith(
      textTheme: getTextTheme()
          .apply(bodyColor: mainDarkTextColor, displayColor: mainDarkTextColor),
      iconTheme: getIconTheme(),
    );
  }
}
