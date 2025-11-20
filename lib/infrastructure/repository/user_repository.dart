
import '../../domain/user/user_model.dart';
import '../../domain/user/user_service.dart';

class UserRepository {
  UserService userService = UserService();

  Future<List<UserModel>?> getUsers() async {
    return await userService.fetchUser();
  }
}
