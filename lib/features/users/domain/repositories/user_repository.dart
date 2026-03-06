import 'package:artist_management/features/users/domain/entities/user_model/user_model.dart';

import '../../../../core/error/failure/failure.dart';
import '../../../../core/utils/either_or.dart';

abstract class UserRepository {
  Future<EitherOr<Failure, List<UserModel>>> getUsers();

  Future<EitherOr<Failure, void>> createUser({
    required String name,
    required String email,
    required String role,
  });

  Future<EitherOr<Failure, void>> updateUser({
    required String id,
    required String name,
    required String role,
  });

  Future<EitherOr<Failure, void>> deleteUser(String id);
}
