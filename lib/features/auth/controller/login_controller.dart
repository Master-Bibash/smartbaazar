import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod/riverpod.dart';
import 'package:smartbazar/common/controller/generic_state.dart';
import 'package:smartbazar/features/auth/model/login_model.dart';
import 'package:smartbazar/features/auth/repository/auth_repository.dart';
import 'package:smartbazar/features/view/home_screen.dart';

final loginController =
    StateNotifierProvider.autoDispose<LoginProvider, GenericState<LoginData>>(
  (ref) => LoginProvider(
    InitialState(),
    repository: AuthRepository(),
  ),
);

class LoginProvider extends StateNotifier<GenericState<LoginData>> {
  final AuthRepository repository;

  LoginProvider(
    super._state, {
    required this.repository,
  });

  void login(
    BuildContext context, {
    required WidgetRef ref,
    required String email,
    required String password,
  }) async {
    state = LoadingState();
    try {
      final loginData = await repository.login(
        email: email,
        password: password,
      );
      state = SuccessState(loginData);
      Navigator.push(context, MaterialPageRoute(builder: (_) => HomeScreen()));
    } catch (e, s) {
      state = ErrorState(e, s);
    }
  }
}
