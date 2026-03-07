import 'package:artist_management/core/presentation/widgets/glow.dart';
import 'package:artist_management/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:artist_management/features/auth/presentation/bloc/auth_event.dart';
import 'package:artist_management/features/auth/presentation/bloc/auth_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

class DashboardAppBar extends StatelessWidget {
  final EdgeInsets contentPadding;
  const DashboardAppBar({
    super.key,
    this.contentPadding = const EdgeInsets.symmetric(horizontal: 22),
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return state.maybeWhen(
          authenticated: (user) {
            return Padding(
              padding: contentPadding,
              child: Row(
                children: [
                  Glow(
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      child: Transform.scale(
                        scale: 1.5,
                        child: Center(
                          child: Lottie.asset('assets/lottie/avatar.json'),
                        ),
                      ),
                    ),
                  ),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: user.name,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                          ),
                        ),
                        TextSpan(text: '\n'),
                        TextSpan(
                          text: user.role,
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                      style: TextStyle(height: 1),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      context.read<AuthBloc>().add(AuthEvent.logout());
                    },
                    icon: Icon(Icons.logout_rounded),
                  ),
                ],
              ),
            );
          },
          orElse: () {
            return const Center(child: CupertinoActivityIndicator());
          },
        );
      },
    );
  }
}
