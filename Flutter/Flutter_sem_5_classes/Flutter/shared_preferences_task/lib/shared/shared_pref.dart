import 'package:shared_preferences/shared_preferences.dart';
import 'package:shared_preferences_task/model/user.dart';

class SharedPref {
  late SharedPreferences _sharedPreferences; //late --> euta function banauda initialized garxu garxu type

  //Add username and password --> shared prreferences
  Future addUser(User user) async{
    _sharedPreferences = await SharedPreferences.getInstance();
    _sharedPreferences.setString('username', user.username);
    _sharedPreferences.setString('password', user.password);
    // _sharedPreferences.setString('token', user.password);
  }
  //Get username and password
  Future<User> getUser() async{
    _sharedPreferences = await SharedPreferences.getInstance();
    final username = _sharedPreferences.getString('username');
    final password = _sharedPreferences.getString('password');

    return User(
      username: username ?? '', 
      password: password ?? ''
    );

  }


}