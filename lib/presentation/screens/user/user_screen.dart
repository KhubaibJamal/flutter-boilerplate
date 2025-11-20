import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boilerplate/application/users/user_cubit.dart';
import '../../../application/users/user_state.dart';
import '../../../domain/user/user_model.dart';
import '../home/home_screen.dart';


class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  @override
  void initState() {
    super.initState();
    fetchUser();
  }

  void fetchUser() async {
    final userCubit = context.read<UserCubit>();
    await userCubit.fetchUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
      ),
      body: Center(
        child: BlocBuilder<UserCubit, UserState>(
          // bloc: cubit,
          builder: (context, state) {
            final userState = state;

            if (userState.isLoading) {
              return const CircularProgressIndicator();
            }

            if (userState.error != null) {
              return Text(userState.error!);
            }

            if (userState.users.isEmpty) {
              return const Text('No users found');
            }

            return ListView(
              children: userState.users
                  .map(
                    (user) => UserCard(
                      user: user,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeScreen(user: user),
                          ),
                        );
                      },
                    ),
                  )
                  .toList(),
            );
          },
        ),
      ),
    );
  }
}

class UserCard extends StatelessWidget {
  final UserModel user;
  final VoidCallback onTap;
  const UserCard({super.key, required this.user, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      padding: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.3),
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        onTap: onTap,
        title: Text(user.name ?? ""),
        leading: CircleAvatar(
          backgroundColor: Colors.blue,
          child: Text(user.name?[0] ?? ''),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(user.email ?? ''),
            Text(user.phone ?? ''),
            Text(user.website ?? ''),
          ],
        ),
      ),
    );
  }
}
