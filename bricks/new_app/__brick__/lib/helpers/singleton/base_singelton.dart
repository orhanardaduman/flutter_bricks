import 'package:flutter/material.dart';

import '../constants/app_constants.dart';
import '../constants/color_constants.dart';
import '../constants/functions.dart';
import '../routes/routes.dart';

abstract class BaseSingleton {
  AppConstants get constants => AppConstants.instance;
  ColorConstants get colors => ColorConstants.instance;
  Routes get routes => Routes.instance;
  BaseFunctions get functions => BaseFunctions.instance;
  WidgetsBinding get widgetsBinding => WidgetsBinding.instance;
}
