import 'package:shared_preferences/shared_preferences.dart';

enum prefKey { login, email, password }

class SharedPreferencesController {
  static final SharedPreferencesController _instance =
      SharedPreferencesController._();
  late SharedPreferences _sharedPreferences;

  SharedPreferencesController._();

  factory SharedPreferencesController() {
    return _instance;
  }

  Future<void> getInstance() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  Future<void> save({required String email, required String password}) async {
    await _sharedPreferences.setBool(prefKey.login.toString(), true);
    await _sharedPreferences.setString(prefKey.email.toString(), email);
    await _sharedPreferences.setString(prefKey.password.toString(), password);
  }

  bool get login =>
      _sharedPreferences.getBool(prefKey.login.toString()) ?? false;

  String get email =>
      _sharedPreferences.getString(prefKey.email.toString()) ?? '';
  String get password =>
      _sharedPreferences.getString(prefKey.password.toString()) ?? '';

  Future<bool> cleared() async {
    return await _sharedPreferences.clear();
  }
}
