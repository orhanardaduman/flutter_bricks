extension ImagePath on String {
  String get toSvg => "assets/icons/$this.svg";

  String get toNetwork => "/$this";
  String get toApi => "/$this";
}
