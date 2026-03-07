import 'package:artist_management/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:artist_management/features/auth/presentation/bloc/auth_event.dart';
import 'package:artist_management/features/auth/presentation/bloc/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login")),
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          state.maybeWhen(
            orElse: () => null,
            authenticated: (user) => null,
            unauthenticated: () => null,
            error: (message) => ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(message))),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              TextField(
                controller: emailController,
                decoration: const InputDecoration(labelText: "Email"),
              ),
              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: const InputDecoration(labelText: "Password"),
              ),

              const SizedBox(height: 20),

              ElevatedButton(
                onPressed: () => context.read<AuthBloc>().add(
                  AuthEvent.login(
                    email: emailController.text,
                    password: passwordController.text,
                  ),
                ),
                child: const Text("Login"),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  context.read<AuthBloc>().add(AuthEvent.loginWithGoogle());
                },
                child: const Text("Login with Google"),
              ),
              TextButton(
                onPressed: () => context.go('/register'),
                child: const Text("Create Account"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
