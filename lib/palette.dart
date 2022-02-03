import 'package:flutter/material.dart';

class Palette {
  static const MaterialColor gBlueColor = MaterialColor(
    0xff6699cc,
    <int, Color>{
      50: Color(0xff5c8ab8),
      100: Color(0xff527aa3),
      200: Color(0xff476b8f),
      300: Color(0xff3d5c7a),
      400: Color(0xff334d66),
      500: Color(0xff293d52),
      600: Color(0xff1f2e3d),
      700: Color(0xff141f29),
      800: Color(0xff0a0f14),
      900: Color(0xff000000),
    },
  );

  Palette(Color? gBlueColor);
}
