import 'package:artist_management/features/activity_log/presentation/bloc/activity_log_bloc.dart';
import 'package:artist_management/features/artists/presentation/bloc/artist_bloc.dart';
import 'package:artist_management/features/dashboard/widget/activities_log.dart';
import 'package:artist_management/features/dashboard/widget/custom_activity.dart';
import 'package:artist_management/features/dashboard/widget/custom_calender.dart';
import 'package:artist_management/features/dashboard/widget/dashboard_app_bar.dart';
import 'package:artist_management/features/dashboard/widget/generic_scaffold.dart';
import 'package:artist_management/features/songs/presentation/bloc/song_bloc.dart';
import 'package:artist_management/features/users/presentation/bloc/user_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  void didChangeDependencies() {
    context.read<UserBloc>().add(UserEvent.loadUsers());
    context.read<ArtistBloc>().add(ArtistEvent.loadArtists());
    context.read<SongBloc>().add(SongEvent.loadAllSongs());
    context.read<ActivityBloc>().add(ActivityEvent.loadActivities());

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return GenericScaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            DashboardAppBar(),
            SizedBox(height: 20),
            CustomCalendar(),
            Activity(),
            SizedBox(height: 30),
            ActivitiesLog(),
          ],
        ),
      ),
    );
  }
}
