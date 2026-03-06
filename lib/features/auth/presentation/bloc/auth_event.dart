import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.freezed.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.checkSession() = CheckSession;

  const factory AuthEvent.login({
    required String email,
    required String password,
  }) = Login;

  const factory AuthEvent.register({
    required String name,
    required String email,
    required String password,
  }) = Register;

  const factory AuthEvent.loginWithGoogle() = LoginWithGoogle;

  const factory AuthEvent.logout() = Logout;
}
