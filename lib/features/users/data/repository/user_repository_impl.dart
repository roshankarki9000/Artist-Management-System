import 'dart:math';

import 'package:artist_management/core/services/supabase_service.dart';
import 'package:artist_management/features/users/domain/entities/user_model/user_model.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failure/failure.dart';
import '../../../../core/utils/either_or.dart';
import '../../../../core/utils/repository_guard.dart';
import '../../domain/repositories/user_repository.dart';

@LazySingleton(as: UserRepository)
class UserRepositoryImpl implements UserRepository {
  final SupabaseService supabaseService;
  final RepositoryGuard guard;

  UserRepositoryImpl(this.supabaseService, this.guard);

  /// ---------------- GET USERS ----------------
  @override
  Future<EitherOr<Failure, List<UserModel>>> getUsers() {
    return guard.run(() async {
      final res = await supabaseService.supabase
          .from('users')
          .select()
          .eq('is_active', true)
          .order('created_at');

      return (res as List).map((json) => UserModel.fromJson(json)).toList();
    });
  }

  /// ---------------- CREATE USER ----------------
  @override
  Future<EitherOr<Failure, void>> createUser({
    required String name,
    required String email,
    required String role,
  }) {
    return guard.run(() async {
      /// 1️⃣ Create auth user
      final authRes = await supabaseService.supabase.auth.signUp(
        email: email,
        password: _generateTempPassword(),
        data: {"name": name},
      );

      final authUser = authRes.user;

      if (authUser == null) {
        throw Exception("Failed to create authentication user");
      }

      /// 2️⃣ Wait until trigger creates the profile
      bool exists = false;
      int attempts = 0;

      while (!exists && attempts < 10) {
        final res = await supabaseService.supabase
            .from('users')
            .select('id')
            .eq('id', authUser.id)
            .maybeSingle();

        if (res != null) {
          exists = true;
        } else {
          await Future.delayed(const Duration(milliseconds: 300));
          attempts++;
        }
      }

      if (!exists) {
        throw Exception("User profile creation timeout");
      }

      /// 3️⃣ Update role
      await supabaseService.supabase
          .from('users')
          .update({"role": role})
          .eq("id", authUser.id);

      /// 4️⃣ Send reset password email
      await supabaseService.supabase.auth.resetPasswordForEmail(
        email,
        redirectTo: 'io.supabase.flutter://reset-callback',
      );
    });
  }

  /// ---------------- UPDATE USER ----------------
  @override
  Future<EitherOr<Failure, void>> updateUser({
    required String id,
    required String name,
    required String role,
  }) {
    return guard.run(() async {
      await supabaseService.supabase
          .from('users')
          .update({"name": name, "role": role})
          .eq("id", id);
    });
  }

  /// ---------------- DELETE USER ----------------
  @override
  Future<EitherOr<Failure, void>> deleteUser(String id) {
    return guard.run(() async {
      await supabaseService.supabase
          .from('users')
          .update({"is_active": false})
          .eq('id', id);
    });
  }

  /// ---------------- TEMP PASSWORD GENERATOR ----------------
  String _generateTempPassword() {
    const chars =
        'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
    final rand = Random();

    return List.generate(
      12,
      (index) => chars[rand.nextInt(chars.length)],
    ).join();
  }
}
