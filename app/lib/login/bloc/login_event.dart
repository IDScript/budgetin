part of 'login_bloc.dart';

sealed class LoginEvent extends Equatable {
  const LoginEvent();
}

class LoginButtonPressed extends LoginEvent {
  final LoginModel loginModel;

  const LoginButtonPressed({
    required this.loginModel,
  });

  @override
  // // TODO: implement props
  List<Object?> get props => [loginModel];

  // @override
  // String toString() {
  //   // TODO: implement toString
  //   return 'LoginButtonPressed { email: $email, password: $password }';
  // }
}
