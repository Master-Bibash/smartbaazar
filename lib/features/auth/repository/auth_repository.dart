// import 'dart:developer';

// import 'package:flutter/foundation.dart';

// import 'package:smartbazar/constant/api_constant.dart';
// import 'package:smartbazar/features/auth/model/login_model.dart';
// import 'package:smartbazar/features/auth/repository/src/base_repository.dart';
// import 'package:smartbazar/features/auth/repository/src/repository_details.dart';
// import 'package:smartbazar/features/auth/repository/src/request_input.dart';

// class AuthRepository extends BaseRepository {
//   AuthRepository()
//       : super(repositoryDetails: RepositoryDetails(tokenNeeded: false));

//   Future<LoginData> login({
//     required String email,
//     required String password,
//   }) async {
//     return await post<LoginData>(
//       RequestInput<LoginData>(
//         url: ApiConstants.loginUrl,
//         parseJson: (map) {
//           final data = LoginData.fromJson(map);
//           if (!kReleaseMode) {
//             log(data.extra.authToken);
//           }
//           return data;
//         },
//         body: {
//           "data": {
//             "logins": email,
//             "password": password,
//           },
//         },
//       ),
//     );
//   }
// }
