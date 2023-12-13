part of 'login_bloc.dart';

sealed class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object> get props => [];
}

final class LoginInitial extends LoginState {}

final class LoginLoading extends LoginState {}

final class LoginLoaded extends LoginState {
  final UserModel userModel;

  const LoginLoaded({
    required this.userModel,
  });
}

class LoginFailure extends LoginState {
  final String error;

  const LoginFailure({required this.error});

  // @override
  // TODO: implement props
  // List<Object?> get props => [error];

  @override
  String toString() {
    // TODO: implement toString
    return 'LoginFailure {error: $error}';
  }
}
