import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:smartbazar/utils/request_type.dart';

class SmartClinet {
  late final Dio _dio;
  static String token = '';
  static String refresh = '';

  final timeOutDuration = const Duration(seconds: kDebugMode ? 30 : 60);

  Future<Response<dynamic>> _retry(RequestOptions requestOptions) async {
    var options = Options(
      method: requestOptions.method,
      headers: requestOptions.headers,
    );
    return _dio.request<dynamic>(
      requestOptions.path,
      data: requestOptions.data,
      queryParameters: requestOptions.queryParameters,
      options: options,
    );
  }

  SmartClinet._() {
    _dio = Dio();
    if (kDebugMode) {
      _dio.interceptors.add(
        LogInterceptor(
          responseBody: true,
          requestHeader: false,
          responseHeader: false,
          requestBody: true,
        ),
      );
    }
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (RequestOptions options, handler) {
          return handler.next(options);
        },
        onError: (DioException error, handler) async {
          if (error.response?.statusCode == 401) {
            return handler.next(error);
          }
          try {
            return handler.next(error);
          } catch (e) {
            return;
          }
        },
        onResponse: (options, handler) {
          return handler.next(options);
        },
      ),
    );
  }

  static final instance = SmartClinet._();

  Future<Response> request({
    required RequestType requestType,
    required String url,
    dynamic parameter,
    dynamic queryParameters,
    dynamic headers,
  }) async {
    Map<String, String> heading = {
      'Content-Type': 'application/json',
      'accept': '*/*',
      'Connection': 'Keep-Alive',
    };

    Map<String, String> headingWithToken = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token',
      'Connection': 'Keep-Alive',
    };

    switch (requestType) {
      case RequestType.get:
        return _dio
            .get(
              url,
              options: Options(headers: heading),
              queryParameters: queryParameters,
            )
            .timeout(timeOutDuration);
      case RequestType.getWithToken:
        return _dio
            .get(
              url,
              options: Options(headers: headingWithToken),
              queryParameters: queryParameters,
            )
            .timeout(timeOutDuration);
      case RequestType.post:
        return _dio
            .post(
              url.trim(),
              data: jsonEncode(parameter),
              options: Options(
                headers: heading,
              ),
            )
            .timeout(timeOutDuration);
      case RequestType.postWithHeaders:
        return _dio
            .post(
              url.trim(),
              data: jsonEncode(parameter),
              options: Options(
                headers: {...heading, ...headers},
              ),
            )
            .timeout(timeOutDuration);
      case RequestType.postWithToken:
        return _dio
            .post(
              url,
              data: jsonEncode(parameter),
              options: Options(
                headers: headingWithToken,
              ),
            )
            .timeout(timeOutDuration);
      case RequestType.postWithTokenFormData:
        return _dio
            .post(
              url,
              data: parameter,
              options: Options(
                headers: headingWithToken,
              ),
            )
            .timeout(timeOutDuration);
    }
  }
}
