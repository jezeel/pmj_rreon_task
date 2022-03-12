import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:pmj_reon_project/constants/constants.dart';
import 'package:pmj_reon_project/models/login/login_input_model.dart';
import 'package:pmj_reon_project/models/login/login_response_model.dart';
import 'package:dio/dio.dart';

class LoginAuthentication extends LoginAPI {
  Future <LoginResponseModel> loginPost({required String email, required String password}) async {
   print("started");
    var loginData = {
      "id": "",
      "email":"delivery@reontel.com",
        "name": "",
        "password":"123456",
        "api_token": "",
        "device_token":"eT15bk5iT0Go5YNoRW5bjf:APA91bGC5esDS75woQ62LGpdyar3LkYDtFMD9lE39hiVt236tWd3e6o9_q1nRfMWNI1uGOsNg0hUPJ-Pq-S-a0QXFCt_1_GgF-aUwOJ-M6jv_qz9R0oeJAT_CrmZ_Xue3u9csmy4EV6F",
        "phone": "",
        "address": "",
        "bio": "",
        "media": ""

    };
    var response = await http.post(Uri.parse('https://gapp.tupperwareoutlet.com/api/login'),
        body: loginData
    );
    print(response.body);
        if (response.statusCode == 200 ){
          final jsonData = jsonDecode(response.body);
          print(jsonData);
          return LoginResponseModel.fromJson(jsonData);
        } else {
          print("failed");
          return LoginResponseModel.fromJson({"success":false});
        }
}
}