class AppConstants {
  static AppConstants? _instance;
  static AppConstants get instance {
    _instance ??= AppConstants._init();
    return _instance!;
  }

  AppConstants._init();
  String appName = "";
  String baseUrl = "";
  String baseUrlForImage = "";
}
