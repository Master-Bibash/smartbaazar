import 'dart:developer';

import 'package:dio/dio.dart';

class CustomAPIException implements Exception {
  String errorMessage;

  int get statusCode => response?.statusCode ?? -1;
  Object? originalErrorObject;
  StackTrace? stackTrace;
  Response? response;

  CustomAPIException(
    this.errorMessage,
    this.response, {
    this.originalErrorObject,
    this.stackTrace,
  });

  @override
  String toString() {
    return errorMessage;
  }

  factory CustomAPIException.onParsing(Object e, StackTrace s) {
    log(e.toString());
    log(s.toString());
    return CustomAPIException(
      "Dear customer, something went wrong with the application. Please contact the developers.",
      null,
    );
  }

  factory CustomAPIException.onCatch(Object e, StackTrace s) {
    if (e is DioException) {
      String genericMessage =
          "Dear customer, we are unable to complete the process. Please try again later."; //Todo: Locale
      final errorMessage = e.response?.data?["message"];
      if (errorMessage != null) {
        return CustomAPIException(
          errorMessage,
          e.response,
          originalErrorObject: e,
          stackTrace: s,
        );
      }
      log(e.toString());
      log(s.toString());
      return CustomAPIException(
        genericMessage,
        e.response,
        originalErrorObject: e,
        stackTrace: s,
      );
    } else {
      log(e.toString());
      log(s.toString());
      return CustomAPIException(
        "Something went wrong with the Application. Please contact the developers.",
        null,
        originalErrorObject: e,
        stackTrace: s,
      );
    }
  }
}
