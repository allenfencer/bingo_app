import 'package:shared_preferences/shared_preferences.dart';

class Token{
  saveToken(String token) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('token', token);
  }

  
}