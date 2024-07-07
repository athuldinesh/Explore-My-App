import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const AuthInitial()) {
    on<AuthEvent>((event, emit) {
      if (event is GetStoredAuthEvent) {
        emit(const LoadingAuthState());
        emit(const UnauthenticatedState());
      }
    });
  }
}
