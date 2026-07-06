import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs {
  static const String authToken = 'authToken';

  static Future<void> saveAuthToken(String token) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(authToken, token);
  }

  static Future<String> loadAuthToken() async {
    final prefs = await SharedPreferences.getInstance();
    final saved = prefs.getString(authToken);
    if (saved == null) return '';

    return saved;
  }
}
