import 'package:bloc/bloc.dart';
import 'package:budgetin/auth/auth.dart';
import 'package:equatable/equatable.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final UserRepository userRepository;

  AuthBloc({required this.userRepository}) : super(AuthUninitialized()) {
    on<AppStarted>(
      (event, emit) async {
        final bool hasToken = await userRepository.hasToken();
        if (hasToken) {
          emit(AuthAuthenticated());
        } else {
          emit(AuthUnauthenticated());
        }
      },
    );

    on<LoggedIn>(
      (event, emit) async {
        print('LoggedIn');
        emit(AuthLoading());
        await userRepository.persistToken(event.token);
        emit(AuthAuthenticated());
      },
    );

    on<LoggedOut>(
      (event, emit) async {
        print('LoggedOut');
        emit(AuthLoading());
        await userRepository.deleteToken();
        emit(AuthUnauthenticated());
      },
    );
  }
}
