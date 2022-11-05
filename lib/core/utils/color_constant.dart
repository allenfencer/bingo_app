import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color cyanA400 = fromHex('#00e0ff');

  static Color green200 = fromHex('#a0e9a7');

  static Color black900C4 = fromHex('#c4000000');

  static Color gray400 = fromHex('#c4c4c4');

  static Color black9007a = fromHex('#7a000000');

  static Color gray200 = fromHex('#eeeeee');

  static Color black9003f = fromHex('#3f000000');

  static Color green500 = fromHex('#37b843');

  static Color black900Ba = fromHex('#ba000000');

  static Color black900Db = fromHex('#db000000');

  static Color greenA700 = fromHex('#00bd14');

  static Color black900Cc = fromHex('#cc000000');

  static Color black900Dd = fromHex('#dd000000');

  static Color black900Aa = fromHex('#aa000000');

  static Color black900 = fromHex('#000000');

  static Color black90096 = fromHex('#96000000');

  static Color whiteA700 = fromHex('#ffffff');

  static Color cyan700 = fromHex('#12a1b4');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
