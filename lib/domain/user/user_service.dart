
import 'package:flutter/foundation.dart';
import 'package:flutter_boilerplate/domain/user/user_model.dart';

import '../../infrastructure/https_service/http_service.dart';
import '../../infrastructure/https_service/urls.dart';

class UserService {
  Future<List<UserModel>?> fetchUser() async {
    try {
      final response = await HttpService.getList(Urls.users);

      if (response.data != null) {
        final data = response.data!;

        final users = data.map((e) => UserModel.fromJson(e)).toList();

        return users;
      } else {
        if (kDebugMode) {
          print(
            'Failed to connect to the server while getting Users: ${response.error}',
          );
        }
      }
    } catch (e) {
      if (kDebugMode) {
        print('Failed to connect to the server while getting Users: $e');
      }
      throw Exception(e);
    }
    return null;
  }
}
