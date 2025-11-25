abstract class NetworkConstants {
  static const String baseUrl = "http://192.168.1.12:8000/";
  static const String authorization = 'Authorization';
  static const String bearer = "Bearer";
}

abstract class EndPoints {
  static const String register = "auth/register";
  static const String login = "auth/login";
}
