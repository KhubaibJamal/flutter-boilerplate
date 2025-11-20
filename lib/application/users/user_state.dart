import '../../domain/user/user_model.dart';

class UserState {
  final List<UserModel> users;
  final bool isLoading;
  final String? error;

  const UserState({
    required this.users,
    required this.isLoading,
    required this.error,
  });

  factory UserState.initial() {
    return const UserState(
      users: [],
      isLoading: false,
      error: null,
    );
  }

  UserState copyWith({
    List<UserModel>? users,
    bool? isLoading,
    String? error,
  }) {
    return UserState(
      users: users ?? this.users,
      isLoading: isLoading ?? this.isLoading,
      error: error ?? this.error,
    );
  }
}
