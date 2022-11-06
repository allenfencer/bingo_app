import 'package:application1/services/token.dart';
import 'package:dio/dio.dart';
import 'dart:developer';

class LoginApi {
  Future loginUser(String email, String password) async {
    String url = '';
    try {
      final dio = Dio();
      final response =
          await dio.post(url, data: {'email': email, 'password': password});
      log(response.statusCode.toString());
      if (response.statusCode == 200) {
        log(response.data.toString());
        return Token().saveToken(response.data['token']);
      } else {
        return Future.error('Some Error has occured!');
      }
    } on DioError catch (e) {
      if (e.response == null) {
        return Future.error('No Internet Connection');
      } else {
        return Future.error(e.response!.data['message']);
      }
    }
  }
}
