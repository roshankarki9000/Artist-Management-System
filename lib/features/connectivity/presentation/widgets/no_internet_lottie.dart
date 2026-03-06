import 'package:artist_management/core/utils/debouncer.dart';
import 'package:artist_management/features/connectivity/bloc/connectivity_bloc.dart';
import 'package:artist_management/features/connectivity/bloc/connectivity_event.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NoInternetLottie extends StatelessWidget {
  final Debouncer _retryDebouncer;
  NoInternetLottie({super.key}) : _retryDebouncer = Debouncer.medium();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.symmetric(horizontal: 24),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 12,
              offset: Offset(0, 6),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Lottie.asset(
              'assets/lottie/no_internet.json',
              width: 200,
              repeat: true,
            ),
            const SizedBox(height: 16),
            const Text(
              "No Internet Connection",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                _retryDebouncer.callAsync(() async {
                  context.read<ConnectivityBloc>().add(
                    const ConnectivityEvent.retryPressed(),
                  );
                });
              },
              child: const Text("Retry"),
            ),
          ],
        ),
      ),
    );
  }
}
