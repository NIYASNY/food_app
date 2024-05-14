import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodapp/blocs/bloc/auth_bloc_bloc.dart';
import 'package:foodapp/screens/auth/views/welcomescreen.dart';
import 'package:foodapp/screens/home/views/homescreen.dart';

class MyAppView extends StatelessWidget {
  const MyAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Food Delivary',
        theme: ThemeData(
            colorScheme: ColorScheme.light(
                background: Colors.grey.shade100,
                onBackground: Colors.black,
                primary: Colors.blue,
                onPrimary: Colors.white)),
        home: BlocBuilder<AuthBlocBloc, AuthBlocState>(
            builder: ((context, state) {
          if (state.status == AuthBlocStatus.authenticated) {
            return HomeScreen();
          } else {
            return WelcomeScreen();
          }
        }),),);
  }
}
