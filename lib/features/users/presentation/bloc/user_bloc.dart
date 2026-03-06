import 'package:artist_management/features/users/domain/entities/user_model/user_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failure/failure.dart';
import '../../domain/repositories/user_repository.dart';

part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

@injectable
class UserBloc extends Bloc<UserEvent, UserState> {
  final UserRepository repository;

  UserBloc(this.repository) : super(const UserState.initial()) {
    on<_LoadUsers>(_loadUsers);
    on<_CreateUser>(_createUser);
    on<_UpdateUser>(_updateUser);
    on<_DeleteUser>(_deleteUser);
  }

  Future<void> _loadUsers(_LoadUsers event, Emitter<UserState> emit) async {
    emit(const UserState.loading());

    final result = await repository.getUsers();

    result.fold(
      (Failure failure) {
        emit(UserState.error(failure.message));
      },
      (List<UserModel> users) {
        emit(UserState.loaded(users));
      },
    );
  }

  Future<void> _createUser(_CreateUser event, Emitter<UserState> emit) async {
    emit(const UserState.loading());

    final result = await repository.createUser(
      name: event.name,
      email: event.email,
      role: event.role,
    );

    result.fold(
      (failure) => emit(UserState.error(failure.message)),
      (_) => add(const UserEvent.loadUsers()),
    );
  }

  Future<void> _updateUser(_UpdateUser event, Emitter<UserState> emit) async {
    emit(const UserState.loading());

    final result = await repository.updateUser(
      id: event.id,
      name: event.name,
      role: event.role,
    );

    result.fold(
      (failure) => emit(UserState.error(failure.message)),
      (_) => add(const UserEvent.loadUsers()),
    );
  }

  Future<void> _deleteUser(_DeleteUser event, Emitter<UserState> emit) async {
    emit(const UserState.loading());

    final result = await repository.deleteUser(event.id);

    result.fold(
      (failure) => emit(UserState.error(failure.message)),
      (_) => add(const UserEvent.loadUsers()),
    );
  }
}
