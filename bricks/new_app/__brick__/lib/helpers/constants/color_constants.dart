import 'package:flutter/material.dart';
import '../extansions/color_ext.dart';

class ColorConstants {
  static ColorConstants? _instance;
  static ColorConstants get instance {
    _instance ??= ColorConstants._init();
    return _instance!;
  }

  ColorConstants._init();

  Color brown = HexColor.fromHex("#b78460");
}
