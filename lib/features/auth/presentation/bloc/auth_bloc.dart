import 'package:artist_management/core/di/get_it_configs/get_it.dart';
import 'package:artist_management/core/services/supabase_service.dart';
import 'package:artist_management/features/auth/domain/repository/auth_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'auth_event.dart';
import 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository repository;

  AuthBloc(this.repository) : super(const AuthState.initial()) {
    getIt<SupabaseService>().supabase.auth.onAuthStateChange.listen((data) {
      final session = data.session;

      if (session != null) {
        add(const AuthEvent.checkSession());
      }
    });
    on<AuthEvent>((event, emit) async {
      await event.map(
        checkSession: (e) => _checkSession(e, emit),
        login: (e) => _login(e, emit),
        register: (e) => _register(e, emit),
        loginWithGoogle: (e) => _googleLogin(e, emit),
        logout: (e) => _logout(e, emit),
      );
    });
  }

  Future<void> _checkSession(
    CheckSession event,
    Emitter<AuthState> emit,
  ) async {
    final user = repository.currentUser();

    if (user != null) {
      emit(const AuthState.authenticated());
    } else {
      emit(const AuthState.unauthenticated());
    }
  }

  Future<void> _login(Login event, Emitter<AuthState> emit) async {
    emit(const AuthState.loading());

    final result = await repository.login(event.email, event.password);

    result.fold(
      (failure) => emit(AuthState.error(failure.message)),
      (_) => emit(const AuthState.authenticated()),
    );
  }

  Future<void> _register(Register event, Emitter<AuthState> emit) async {
    emit(const AuthState.loading());

    final result = await repository.register(
      event.name,
      event.email,
      event.password,
    );

    result.fold(
      (failure) => emit(AuthState.error(failure.message)),
      (_) => emit(const AuthState.emailVerificationRequired()),
    );
  }

  Future<void> _googleLogin(
    LoginWithGoogle event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.loading());

    final result = await repository.loginWithGoogle();

    result.fold(
      (failure) => emit(AuthState.error(failure.message)),
      (_) => emit(const AuthState.authenticated()),
    );
  }

  Future<void> _logout(Logout event, Emitter<AuthState> emit) async {
    await repository.logout();
    emit(const AuthState.unauthenticated());
  }
}
