import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/auth/model/signup_model.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';

class SignUpAPi {
  final SmartClinet _clinet = SmartClinet();
  signUp(
      {required String name,
      required String phone,
      required String email,
      required String passsword,
      required String password_confirmation,
      required String country_code,
      required String username,
      required String accept_terms,
      required String accept_marketing_offers}) async {
    final body = {
      'name': name,
      'phone': phone,
      'email': email,
      'password': passsword,
      'password_confirmation': password_confirmation,
      'country_Code': country_code,
      'username': username,
      'accept_terms': accept_terms,
      'accept_marketing_offer': accept_marketing_offers,
    };

    try {
      final response = await _clinet.request(
          requestType: RequestType.postWithToken,
          url: ApiConstants.signUpUrl,
          parameter: body);

      if (response.statusCode! >= 200 && response.statusCode! < 300) {
        if (response.data != null) {
          final signUpUser = SignupModel.fromJson(response.data);
          signUpUser;
        }
      }
    } catch (e) {
      rethrow;
    }
  }
}
