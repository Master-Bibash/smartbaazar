import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smartbazar/common/controller/generic_state.dart';
import 'package:smartbazar/features/auth/api/signup_api.dart';
import 'package:smartbazar/features/auth/model/signup_model.dart';
import 'package:smartbazar/utils/custom_exception.dart';

class SignUpController extends StateNotifier<GenericState> {
  final SignUpAPi _signUpApi;
  SignUpController(this._signUpApi) : super(InitialState());
  Future<void> signUp(
      {required String name,
      required String phone,
      required String email,
      required String passsword,
      required String password_confirmation,
      required String country_code,
      required String username,
      required String accept_terms,
      required String accept_marketing_offers}) async {
    state = LoadedState();
    try {
      final singUpData = await _signUpApi.signUp(
          name: name,
          phone: phone,
          email: email,
          passsword: passsword,
          password_confirmation: password_confirmation,
          country_code: country_code,
          username: username,
          accept_terms: accept_terms,
          accept_marketing_offers: accept_marketing_offers);
      state = LoadedState<SignupModel>(response: singUpData);
    } catch (e) {
      state = ErrorState(getCustomException(e));
    }
  }
}
