import 'dart:async';

import 'package:artist_management/core/enum/roles.dart';
import 'package:artist_management/core/services/supabase_service.dart';
import 'package:artist_management/features/auth/domain/repository/auth_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../../../core/error/failure/failure.dart';
import '../../../../../core/utils/either_or.dart';
import '../../../../../core/utils/repository_guard.dart';

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  final SupabaseService supabaseService;
  final RepositoryGuard guard;

  AuthRepositoryImpl(this.supabaseService, this.guard);

  /// ---------------- LOGIN ----------------
  @override
  Future<EitherOr<Failure, Session>> login(String email, String password) {
    return guard.run(() async {
      final res = await supabaseService.supabase.auth.signInWithPassword(
        email: email,
        password: password,
      );

      final session = res.session;
      final user = res.user;

      if (session == null || user == null) {
        throw Exception("Login failed");
      }

      /// EMAIL VERIFICATION CHECK
      if (user.emailConfirmedAt == null) {
        await supabaseService.supabase.auth.signOut();
        throw Exception("Please verify your email before logging in.");
      }

      await _ensureUserProfile();

      final profile = await supabaseService.supabase
          .from('users')
          .select()
          .eq('id', user.id)
          .maybeSingle();

      if (profile == null || profile['is_active'] == false) {
        await supabaseService.supabase.auth.signOut();
        throw Exception("Your account has been disabled by admin.");
      }

      return session;
    });
  }

  /// ---------------- REGISTER ----------------
  @override
  Future<EitherOr<Failure, User>> register(
    String name,
    String email,
    String password,
  ) {
    return guard.run(() async {
      final res = await supabaseService.supabase.auth.signUp(
        email: email,
        password: password,
        data: {"name": name},
        emailRedirectTo: 'io.supabaseService.supabase.flutter://login-callback',
      );

      final user = res.user;

      if (user == null) {
        throw Exception("Registration failed");
      }

      final existingProfile = await supabaseService.supabase
          .from('users')
          .select()
          .eq('id', user.id)
          .maybeSingle();

      /// RESTORE SOFT DELETED USER
      if (existingProfile != null) {
        if (existingProfile['is_active'] == false) {
          await supabaseService.supabase
              .from('users')
              .update({"is_active": true, "name": name})
              .eq('id', user.id);
        }

        return user;
      }

      /// CHECK IF FIRST USER
      final existingUsers = await supabaseService.supabase
          .from('users')
          .select('id')
          .limit(1);

      final isFirstUser = (existingUsers as List).isEmpty;

      final role = isFirstUser ? Role.superadmin : Role.admin;

      await supabaseService.supabase.from('users').insert({
        "id": user.id,
        "name": name,
        "email": email,
        "role": role.name,
        "created_by": supabaseService.supabase.auth.currentUser?.id,
        "is_active": true,
      });

      return user;
    });
  }

  /// ---------------- GOOGLE LOGIN ----------------
  @override
  Future<EitherOr<Failure, Session>> loginWithGoogle() {
    return guard.run(() async {
      await supabaseService.supabase.auth.signInWithOAuth(
        OAuthProvider.google,
        redirectTo: 'io.supabaseService.supabase.flutter://login-callback',
      );

      final completer = Completer<Session>();

      final sub = supabaseService.supabase.auth.onAuthStateChange.listen((
        data,
      ) {
        final session = data.session;

        if (session != null && !completer.isCompleted) {
          completer.complete(session);
        }
      });

      final session = await completer.future;

      await sub.cancel();

      await _ensureUserProfile();

      final user = supabaseService.supabase.auth.currentUser;

      final profile = await supabaseService.supabase
          .from('users')
          .select()
          .eq('id', user!.id)
          .maybeSingle();

      if (profile == null || profile['is_active'] == false) {
        await supabaseService.supabase.auth.signOut();
        throw Exception("Your account has been disabled by admin.");
      }

      return session;
    });
  }

  /// ---------------- LOGOUT ----------------
  @override
  Future<void> logout() async {
    await supabaseService.supabase.auth.signOut();
  }

  /// ---------------- CURRENT USER ----------------
  @override
  User? currentUser() {
    return supabaseService.supabase.auth.currentUser;
  }

  /// ---------------- PRIVATE HELPER ----------------
  Future<void> _ensureUserProfile() async {
    final user = supabaseService.supabase.auth.currentUser;

    if (user == null) return;

    final existing = await supabaseService.supabase
        .from('users')
        .select()
        .eq('id', user.id)
        .maybeSingle();

    /// RESTORE SOFT DELETED USER
    if (existing != null) {
      if (existing['is_active'] == false) {
        await supabaseService.supabase
            .from('users')
            .update({"is_active": true})
            .eq('id', user.id);
      }

      return;
    }

    /// CHECK IF FIRST USER
    final existingUsers = await supabaseService.supabase
        .from('users')
        .select('id')
        .limit(1);

    final isFirstUser = (existingUsers as List).isEmpty;

    final role = isFirstUser ? Role.superadmin : Role.admin;

    final name =
        user.userMetadata?['full_name'] ??
        user.userMetadata?['name'] ??
        'Admin';

    await supabaseService.supabase.from('users').insert({
      "id": user.id,
      "name": name,
      "email": user.email,
      "role": role.name,
      "created_by": supabaseService.supabase.auth.currentUser?.id,
      "is_active": true,
    });
  }
}
