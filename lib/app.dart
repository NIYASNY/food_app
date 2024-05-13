import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodapp/app_view.dart';
import 'package:foodapp/blocs/bloc/auth_bloc_bloc.dart';
import 'package:user_repository/user_repository.dart';

class MyApp extends StatelessWidget {
  final UserRepository userRepository;
  const MyApp(
    this.userRepository, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider<AuthBlocBloc>(
      create: (context) => AuthBlocBloc(
        userRepository: userRepository,
      ),
      child: const MyAppView(),
    );
  }
}
