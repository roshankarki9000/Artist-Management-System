import 'package:artist_management/core/di/get_it_configs/get_it.dart';
import 'package:artist_management/core/services/supabase_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../bloc/auth_bloc.dart';
import '../bloc/auth_event.dart';

class OAuthCallbackPage extends StatefulWidget {
  const OAuthCallbackPage({super.key});

  @override
  State<OAuthCallbackPage> createState() => _OAuthCallbackPageState();
}

class _OAuthCallbackPageState extends State<OAuthCallbackPage> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _handleLogin();
    });
  }

  Future<void> _handleLogin() async {
    try {
      final uri = GoRouterState.of(context).uri;

      await getIt<SupabaseService>().supabase.auth.getSessionFromUrl(uri);

      if (!mounted) return;

      /// Refresh auth state
      context.read<AuthBloc>().add(const AuthEvent.checkSession());

      /// navigate manually
      context.go('/dashboard');
    } catch (e) {
      debugPrint("OAuth error: $e");
      context.go('/login');
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: CircularProgressIndicator()));
  }
}
