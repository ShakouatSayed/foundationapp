import 'package:flutter/material.dart';
import 'package:foundationapp/config/themes/app_dark_theme.dart';
import 'package:foundationapp/config/themes/ui_Parameter.dart';

import 'app_light_theme.dart';

const Color onSurfaceTextColor = Colors.white;

LinearGradient mainGradientColorLight = LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [
      primaryLightColorLight,
      primaryColorLight,
    ]);
LinearGradient mainGradientColorDark = LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [
      primaryDarkColorDark,
      primaryColorDark,
      primaryColor,
      primaryColor1
    ]);
LinearGradient mainGradient(BuildContext context) =>
    UIParameter.isDarkMode(context)
        ? mainGradientColorDark
        : mainGradientColorLight;
