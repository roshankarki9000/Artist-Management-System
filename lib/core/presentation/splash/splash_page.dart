import 'package:artist_management/core/presentation/widgets/glow.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

import '../../../features/auth/presentation/bloc/auth_bloc.dart';
import '../../../features/auth/presentation/bloc/auth_state.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _animation;

  bool animationDone = false;
  bool authChecked = false;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(vsync: this);

    _animation = CurvedAnimation(parent: _controller, curve: Curves.linear);

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        animationDone = true;
        _navigateIfReady();
      }
    });
  }

  void _navigateIfReady() {
    if (!animationDone || !authChecked) return;
    final authState = context.read<AuthBloc>().state;
    final loggedIn = authState.maybeWhen(
      authenticated: (_) => true,
      orElse: () => false,
    );
    if (loggedIn) {
      context.go('/dashboard');
    } else {
      context.go('/login');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is! Initial && state is! Loading) {
            authChecked = true;
            _navigateIfReady();
          }
        },
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Glow(
                child: Lottie.asset(
                  'assets/lottie/cassette_lottie_animation.json',
                  controller: _animation,
                  width: 250,
                  height: 250,
                  onLoaded: (composition) {
                    _controller.duration = composition.duration;
                    _controller.forward();
                  },
                ),
              ),
              CupertinoActivityIndicator(),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
