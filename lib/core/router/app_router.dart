import 'package:artist_management/features/auth/presentation/screens/login_page.dart';
import 'package:artist_management/features/auth/presentation/screens/oauth_callback_page.dart';
import 'package:artist_management/features/auth/presentation/screens/register_page.dart';
import 'package:artist_management/features/auth/presentation/screens/reset_password_screen.dart';
import 'package:artist_management/features/dashboard/presentation/dashboard.dart';
import 'package:go_router/go_router.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../features/auth/presentation/bloc/auth_bloc.dart';
import '../../features/auth/presentation/bloc/auth_state.dart';
import '../utils/go_router_refresh_stream.dart';

class AppRouter {
  static GoRouter createRouter(AuthBloc authBloc) {
    final router = GoRouter(
      initialLocation: '/login',
      refreshListenable: GoRouterRefreshStream(authBloc.stream),

      redirect: (context, state) {
        final location = state.matchedLocation;

        /// normalize trailing slash from deep link
        if (location == '/login-callback/') {
          return '/login-callback';
        }

        final authState = authBloc.state;

        final loggedIn = authState.maybeWhen(
          authenticated: () => true,
          orElse: () => false,
        );

        final verifyingEmail = authState.maybeWhen(
          emailVerificationRequired: () => true,
          orElse: () => false,
        );

        final loggingIn =
            location == '/login' ||
            location == '/register' ||
            location == '/login-callback' ||
            location == '/reset-password';

        if (verifyingEmail && location != '/login') {
          return '/login';
        }

        if (!loggedIn && !loggingIn) {
          return '/login';
        }

        if (loggedIn && loggingIn && location != '/reset-password') {
          return '/dashboard';
        }

        return null;
      },

      routes: [
        GoRoute(path: '/', redirect: (_, _) => '/login'),

        GoRoute(path: '/login', builder: (context, state) => const LoginPage()),

        GoRoute(
          path: '/register',
          builder: (context, state) => const RegisterPage(),
        ),

        GoRoute(
          path: '/dashboard',
          builder: (context, state) => const DashboardPage(),
        ),

        GoRoute(
          path: '/login-callback',
          builder: (context, state) => const OAuthCallbackPage(),
        ),

        GoRoute(
          path: '/reset-password',
          builder: (context, state) => const ResetPasswordScreen(),
        ),
      ],
    );

    /// 🔹 HANDLE SUPABASE PASSWORD RECOVERY
    Supabase.instance.client.auth.onAuthStateChange.listen((data) {
      final event = data.event;

      if (event == AuthChangeEvent.passwordRecovery) {
        router.go('/reset-password');
      }
    });

    return router;
  }
}
