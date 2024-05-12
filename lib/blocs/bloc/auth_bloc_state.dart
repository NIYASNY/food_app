part of 'auth_bloc_bloc.dart';

enum AuthBlocStatus { authenticated, unauthenticated, unknown }

class AuthBlocState extends Equatable {
  const AuthBlocState._({this.status = AuthBlocStatus.unknown, this.user});

  final AuthBlocStatus status;
  final MyUser? user;

  const AuthBlocState.unknown() : this._();

  const AuthBlocState.authenticated(MyUser myuser)
      : this._(status: AuthBlocStatus.authenticated, user: myuser);

  const AuthBlocState.unauthenticated()
      : this._(status: AuthBlocStatus.unauthenticated);

  @override
  List<Object?> get props => [status, user];
}


