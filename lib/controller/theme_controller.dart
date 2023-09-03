import 'package:flutter/material.dart';
import 'package:foundationapp/config/themes/app_dark_theme.dart';
import 'package:foundationapp/config/themes/app_light_theme.dart';
import 'package:get/get.dart';

class ThemeController extends GetxController {
  late ThemeData _lightTheme;
  late ThemeData _darkTheme;

  @override
  void onInit() {
    initializedThemeData();
    super.onInit();
  }

  initializedThemeData() {
    _lightTheme = LightTheme().buildLightTheme();
    _darkTheme = DarkTheme().buildDarkTheme();
  }

  ThemeData get darkThem => _darkTheme;
  ThemeData get lightThem => _lightTheme;
}
