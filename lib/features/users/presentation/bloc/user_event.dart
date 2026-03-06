part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.loadUsers() = _LoadUsers;

  const factory UserEvent.createUser({
    required String name,
    required String email,
    required String role,
  }) = _CreateUser;

  const factory UserEvent.updateUser({
    required String id,
    required String name,
    required String role,
  }) = _UpdateUser;

  const factory UserEvent.deleteUser(String id) = _DeleteUser;
}
