import 'package:artist_management/core/presentation/widgets/glow.dart';
import 'package:artist_management/core/utils/extensions/date_time_extension.dart';
import 'package:artist_management/core/utils/extensions/num_extension.dart';
import 'package:artist_management/features/artists/presentation/bloc/artist_bloc.dart';
import 'package:artist_management/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:artist_management/features/auth/presentation/bloc/auth_state.dart';
import 'package:artist_management/features/dashboard/widget/generic_grid_view.dart';
import 'package:artist_management/features/songs/presentation/bloc/song_bloc.dart';
import 'package:artist_management/features/users/presentation/bloc/user_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Activity extends StatelessWidget {
  final EdgeInsets contentPadding;
  const Activity({
    super.key,
    this.contentPadding = const EdgeInsets.symmetric(horizontal: 22),
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: contentPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 10,
        children: [
          Text(
            'Top Activities',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          GenericGridview(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            children: [
              BlocBuilder<UserBloc, UserState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    loaded: (user) => _Activities(
                      title: 'Users',
                      color: Color(0xFF0C0412),
                      iconPath: 'assets/gifs/users.gif',
                      value: user.length.twoDigits,
                      subtitle: 'Total Users',
                    ),
                    orElse: () =>
                        const Center(child: CupertinoActivityIndicator()),
                  );
                },
              ),

              BlocBuilder<ArtistBloc, ArtistState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    loaded: (user) => _Activities(
                      title: 'Artists',
                      color: Color(0xFFEDCA7C),
                      iconPath: 'assets/gifs/artists.gif',
                      value: user.length.twoDigits,
                      subtitle: 'Artists Created',
                    ),
                    orElse: () =>
                        const Center(child: CupertinoActivityIndicator()),
                  );
                },
              ),
              BlocBuilder<SongBloc, SongState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    loaded: (user) => _Activities(
                      title: 'Songs',
                      color: Color(0xFF3F51B5),
                      iconPath: 'assets/gifs/music.gif',
                      value: user.length.twoDigits,
                      subtitle: 'Music Recorded',
                    ),
                    orElse: () =>
                        const Center(child: CupertinoActivityIndicator()),
                  );
                },
              ),
              BlocBuilder<AuthBloc, AuthState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    authenticated: (user) => _Activities(
                      title: 'Total Days',
                      color: Color(0xFFC6D337),
                      iconPath: 'assets/gifs/working_days.gif',
                      value: user.createdAt.getWorkingDaysTillNow.twoDigits,
                      subtitle: 'Working Days',
                    ),
                    orElse: () =>
                        const Center(child: CupertinoActivityIndicator()),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _Activities extends StatelessWidget {
  final String title;
  final Color color;
  final String iconPath;
  final String value;
  final String subtitle;
  const _Activities({
    required this.title,
    required this.color,
    required this.iconPath,
    required this.value,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Glow(
      child: Container(
        height: 135,
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Column(
          spacing: 8,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: 10,
              children: [
                Glow(
                  opacity: 1,
                  blurStrength: 35,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(iconPath, height: 35, width: 35),
                  ),
                ),
                Text(
                  title,
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ],
            ),
            Text(
              value,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(subtitle, style: TextStyle(fontSize: 16, color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
