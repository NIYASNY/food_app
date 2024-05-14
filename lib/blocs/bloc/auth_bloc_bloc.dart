import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:user_repository/user_repository.dart';

part 'auth_bloc_event.dart';
part 'auth_bloc_state.dart';

class AuthBlocBloc extends Bloc<AuthBlocEvent, AuthBlocState> {
  final UserRepository userRepository;
  late final StreamSubscription<MyUser?> _usersubscription;
  AuthBlocBloc({required this.userRepository})
      : super(const AuthBlocState.unknown()) {
    _usersubscription = userRepository.user.listen((user) {
      add(AuthenticationUserChanged(user));
    });
    on<AuthenticationUserChanged>(((event, emit) {
      if (event.user != MyUser.empty) {
        emit(AuthBlocState.authenticated(event.user!));
      } else {
        emit(const AuthBlocState.unauthenticated());
      }
    }));
  }

  @override
  Future<void> close() {
    _usersubscription.cancel();
    return super.close();
  }
}
