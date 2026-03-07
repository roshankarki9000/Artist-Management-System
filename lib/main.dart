import 'package:artist_management/core/bloc/app_bloc_observer.dart';
import 'package:artist_management/core/di/bloc_provider_config.dart';
import 'package:artist_management/core/di/get_it_configs/get_it.dart';
import 'package:artist_management/core/presentation/widgets/app_background.dart';
import 'package:artist_management/core/router/app_router.dart';
import 'package:artist_management/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:artist_management/features/auth/presentation/bloc/auth_event.dart';
import 'package:artist_management/features/connectivity/presentation/connectivity_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://jrqakggremldblmjauqw.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImpycWFrZ2dyZW1sZGJsbWphdXF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzI1NDYwOTQsImV4cCI6MjA4ODEyMjA5NH0.OSpNrCXLUP6NEtX3AHJgfKobubF3wZd4CULxuB6R6KA',
  );
  await configureDependencies();
  Bloc.observer = AppBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final AuthBloc _authBloc;
  late final GoRouter _router;

  @override
  void initState() {
    super.initState();

    /// Get AuthBloc from DI
    _authBloc = getIt<AuthBloc>();

    /// Check existing session
    _authBloc.add(AuthEvent.checkSession());

    /// Create router with AuthBloc
    _router = AppRouter.createRouter(_authBloc);
  }

  @override
  void dispose() {
    _authBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProviderConfig(
      child: BlocProvider.value(
        value: _authBloc,
        child: MaterialApp.router(
          routerConfig: _router,
          builder: (context, child) =>
              ConnectivityWidget(child: AppBackground(child: child!)),
          debugShowCheckedModeBanner: false,
          title: 'Artist Management',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
            scaffoldBackgroundColor: Colors.transparent,
          ),
        ),
      ),
    );
  }
}
