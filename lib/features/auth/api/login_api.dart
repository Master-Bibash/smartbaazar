import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';

class LoginApi {
  final SmartClinet _client = SmartClinet();

  login(String email, String password) async {
    Map loginBody = {
      'login': email,
      'password': password,
    };
    try {
      var response = await _client.request(
          requestType: RequestType.post,
          url: ApiConstants.loginUrl,
          parameter: loginBody);
      if (response.statusCode! >= 200 && response.statusCode! < 300) {
        if (response.data != null) {
          SmartClinet.token = response.data['extra']['authToken'];
        } else {}
      }

      return response;
    } catch (e) {
      rethrow;
    }
  }
}
