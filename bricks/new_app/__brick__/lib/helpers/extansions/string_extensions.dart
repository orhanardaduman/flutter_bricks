import '../constants/app_constants.dart';

extension ImagePath on String {
  String get toSvg => "assets/icons/$this.svg";

  String get toNetwork => "${AppConstants.instance.baseUrlForImage}}/$this";
  String get toApi => "${AppConstants.instance.baseUrl}/$this";
}
