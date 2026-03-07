import 'dart:async';

import 'package:artist_management/core/services/supabase_service.dart';
import 'package:artist_management/features/auth/domain/repository/auth_repository.dart';
import 'package:artist_management/features/users/domain/entities/user_model/user_model.dart';
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

      /// CHECK USER PROFILE STATUS
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

  @override
  Future<EitherOr<Failure, UserModel>> getUserProfile(String id) {
    return guard.run(() async {
      final response = await supabaseService.supabase
          .from('users')
          .select()
          .eq('id', id)
          .single();

      return UserModel.fromJson(response);
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
        emailRedirectTo: 'io.supabase.flutter://login-callback',
      );

      final user = res.user;

      if (user == null) {
        throw Exception("Registration failed");
      }

      return user;
    });
  }

  /// ---------------- GOOGLE LOGIN ----------------
  @override
  Future<EitherOr<Failure, Session>> loginWithGoogle() {
    return guard.run(() async {
      await supabaseService.supabase.auth.signInWithOAuth(
        OAuthProvider.google,
        redirectTo: 'io.supabase.flutter://login-callback',
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

      final user = supabaseService.supabase.auth.currentUser;

      if (user == null) {
        throw Exception("Google login failed");
      }

      /// CHECK USER PROFILE
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
}
