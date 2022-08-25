import 'package:flutter/material.dart';

Map<int, Color> _swatchOpacity = {
  50: const Color.fromRGBO(204, 222, 232, .1),
  100: const Color.fromRGBO(204, 222, 232, .2),
  200: const Color.fromRGBO(204, 222, 232, .3),
  300: const Color.fromRGBO(204, 222, 232, .4),
  400: const Color.fromRGBO(204, 222, 232, .5),
  500: const Color.fromRGBO(204, 222, 232, .6),
  600: const Color.fromRGBO(204, 222, 232, .7),
  700: const Color.fromRGBO(204, 222, 232, .8),
  800: const Color.fromRGBO(204, 222, 232, .9),
  900: const Color.fromRGBO(204, 222, 232, 1),
};

abstract class CustomColors {
  static Color customContrastColor = const Color(0xff4E4D4B);
  static Color customContrastColor2 = const Color(0xff100F0D);
  static Color customContrastColor3 = const Color(0xffCE4A95);
  static Color customContrastColor4 = const Color(0xffFFFFFF);

  static MaterialColor customSwatchColor =
      MaterialColor(0xffCCDEE8, _swatchOpacity);
}
