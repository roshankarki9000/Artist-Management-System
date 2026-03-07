import 'package:artist_management/features/users/domain/entities/user_model/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = Initial;

  const factory AuthState.loading() = Loading;

  const factory AuthState.authenticated(UserModel user) = Authenticated;

  const factory AuthState.unauthenticated() = Unauthenticated;

  const factory AuthState.emailVerificationRequired() =
      EmailVerificationRequired;

  const factory AuthState.error(String message) = Error;
}
