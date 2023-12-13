import 'package:bloc/bloc.dart';
import 'package:budgetin/login/login.dart';
import 'package:equatable/equatable.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final APILogin apiLogin;
  LoginBloc(
    this.apiLogin,
  ) : super(LoginInitial()) {
    on<LoginButtonPressed>((event, emit) async {
      emit(LoginLoading());
      final result = await apiLogin.login(event.loginModel);
      emit(LoginLoaded(userModel: result));
    });
  }
}
