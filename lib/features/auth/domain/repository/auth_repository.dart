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

  Future<EitherOr<Failure, Session>> loginWithGoogle();

  Future<void> logout();

  User? currentUser();
}
