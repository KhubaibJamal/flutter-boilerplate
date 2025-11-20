import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boilerplate/application/users/user_cubit.dart';

import '../../../domain/user/user_model.dart';


class HomeScreen extends StatelessWidget {
  final UserModel user;
  const HomeScreen({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    final userCubit = BlocProvider.of<UserCubit>(context);

    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Center(
        child: Column(
          children: [
            Text(user.name ?? ''),
            Expanded(
              child: ListView.builder(
                itemCount: userCubit.state.users.length,
                itemBuilder: (context, index) {
                  return Text(userCubit.state.users[index].name ?? '');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
