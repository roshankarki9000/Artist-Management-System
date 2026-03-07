import 'package:artist_management/core/di/get_it_configs/get_it.dart';
import 'package:artist_management/features/activity_log/presentation/bloc/activity_log_bloc.dart';
import 'package:artist_management/features/artists/presentation/bloc/artist_bloc.dart';
import 'package:artist_management/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:artist_management/features/connectivity/bloc/connectivity_bloc.dart';
import 'package:artist_management/features/connectivity/bloc/connectivity_event.dart';
import 'package:artist_management/features/songs/presentation/bloc/song_bloc.dart';
import 'package:artist_management/features/users/presentation/bloc/user_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocProviderConfig extends StatelessWidget {
  final Widget child;
  const BlocProviderConfig({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) =>
              getIt<ConnectivityBloc>()..add(ConnectivityEvent.started()),
        ),
        BlocProvider(create: (_) => getIt<AuthBloc>()),
        BlocProvider(create: (_) => getIt<UserBloc>()),
        BlocProvider(create: (_) => getIt<ArtistBloc>()),
        BlocProvider(create: (_) => getIt<SongBloc>()),
        BlocProvider(create: (_) => getIt<ActivityBloc>()),
      ],
      child: child,
    );
  }
}
