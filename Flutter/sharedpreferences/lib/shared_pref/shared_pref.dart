import 'package:shared_preferences/shared_preferences.dart';
import 'package:sharedpreferences/model/user.dart';

class SharedPref {
  late SharedPreferences _sharedPreferences;

  // Two functions for now.
  // Add username and password to sharedpreferences
  Future addUser(User user) async {
    _sharedPreferences = await SharedPreferences.getInstance();
    _sharedPreferences.setString('username', user.username);
    _sharedPreferences.setString('password', user.password);
  }

  // Get username and password from sharedPreferences
  Future<User> getUser() async {
    _sharedPreferences = await SharedPreferences.getInstance();
    final username = _sharedPreferences.getString('username');
    final password = _sharedPreferences.getString("password");

    return User(username: username ?? "", password: password ?? "");
  }

  SharedPref({required SharedPreferences sharedPreferences});
}
