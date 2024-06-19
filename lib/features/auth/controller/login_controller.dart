import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod/riverpod.dart';
import 'package:smartbazar/common/controller/generic_state.dart';
import 'package:smartbazar/features/auth/api/login_api.dart';
import 'package:smartbazar/features/auth/model/login_model.dart';

// final loginController = StateNotifierProvider<LoginController, LoginData>(
//     (ref) => LoginController());

// class LoginController extends StateNotifier<GenericState> {
//   LoginController() : super(InitialState());

//   Future<void> login({
//     required WidgetRef ref,
//     required String email,
//     required String password,
//   }) async {
//     state = LoadingState();
//     try {
//       final loginData = await LoginApi().login(
//         email,
//         password,
//       );
//       state = SucessState();
//     } catch (e) {
//       state = ErrorState(e.toString());
//     }
//   }
// }
final loginController =
    StateNotifierProvider<LoginController, GenericState>((ref) {
  return LoginController();
});

class LoginController extends StateNotifier<GenericState> {
  LoginController() : super(const InitialState());

  Future<void> login(
      {required WidgetRef ref,
      required String email,
      required String password}) async {
    state = LoadingState();
    try {
      final loginData = await LoginApi().login(email, password);
      state = SucessState();
    } catch (e) {
      state = ErrorState(e.toString());
    }
  }
}
