import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boilerplate/application/users/user_state.dart';

import '../../infrastructure/repository/user_repository.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(UserState.initial());

  final UserRepository _userRepository = UserRepository();

  Future<void> fetchUser() async {
    emit(state.copyWith(isLoading: true));
    try {
      final users = await _userRepository.getUsers();
      emit(state.copyWith(users: users, isLoading: false));
    } catch (e) {
      emit(state.copyWith(error: "Failed to fetch users", isLoading: false));
    }
  }
}
