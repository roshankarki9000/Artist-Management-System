import 'package:artist_management/features/users/domain/entities/user_model/user_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../../../core/error/failure/failure.dart';
import '../../../../../core/utils/either_or.dart';

abstract class AuthRepository {
  Future<EitherOr<Failure, Session>> login(String email, String password);

  Future<EitherOr<Failure, User>> register(
    String name,
    String email,
    String password,
  );

  Future<EitherOr<Failure, UserModel>> getUserProfile(String id);

  Future<EitherOr<Failure, Session>> loginWithGoogle();

  Future<void> logout();

  User? currentUser();
}
