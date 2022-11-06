import 'package:application1/models/create_user_model.dart';
import 'package:dio/dio.dart';
import 'dart:developer';

class CreateUserApi {
  Future createUser(String name, String email, String phone, String password,
      String address) async {
    try {
      final dio = Dio();
      final response = await dio.post(
          'https://bingo-backend1.herokuapp.com/api/v1/users/signup',
          data: {
            "name": name,
            "email": email,
            "phone": phone,
            "password": password,
            "address": address,
          });
      if (response.statusCode == 200) {
        log(response.statusCode.toString());
        log(response.data.toString());
        return;
      } else {
        return Future.error('Some Error has occured!');
      }
    } on DioError catch (e) {
      if(e.response==null){
        return Future.error('No Internet Connection');
      }
      else{
        return Future.error(e.response!.data['message']);
      }
    }
  }
}
