import 'package:flutter/material.dart';
import '../extansions/color_ext.dart';

class ColorConstants {
  static ColorConstants? _instance;
  static ColorConstants get instance {
    _instance ??= ColorConstants._init();
    return _instance!;
  }

  ColorConstants._init();

  Color valo = HexColor.fromHex("#fa4454");
  Color darkGreen = HexColor.fromHex("#042e27");
  Color darkBlue = HexColor.fromHex("#364966");
  Color purple = HexColor.fromHex("#3B1876");
  Color ten = HexColor.fromHex("#b38c8f");
  Color brown = HexColor.fromHex("#b78460");
  Color esportBackGround = const Color.fromARGB(255, 59, 58, 63);
}
