part of 'auth_bloc_bloc.dart';

sealed class AuthBlocEvent extends Equatable {
  const AuthBlocEvent();

  @override
  List<Object> get props => [];
}

class AuthenticationUserChanged extends AuthBlocEvent {
  final MyUser? user;

  const AuthenticationUserChanged(this.user);

}
