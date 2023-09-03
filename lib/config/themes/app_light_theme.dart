import 'package:flutter/material.dart';
import 'package:foundationapp/config/themes/sub_theme_data.dart';

const Color primaryLightColorLight = Color(0x0ffee23c);
const Color primaryColorLight = Color(0xffFCe45c);

const Color mainLightTextColor = Colors.black;

class LightTheme with SubThemeData {
  final ThemeData systemLightTheme = ThemeData.light();
  buildLightTheme() {
    return systemLightTheme.copyWith(
        iconTheme: getIconTheme(),
        textTheme: getTextTheme().apply(
          bodyColor: mainLightTextColor,
          displayColor: mainLightTextColor,
        ));
  }
}
