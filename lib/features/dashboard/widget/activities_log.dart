import 'package:artist_management/core/presentation/widgets/glow.dart';
import 'package:artist_management/core/utils/extensions/date_time_extension.dart';
import 'package:artist_management/core/utils/extensions/string_extension.dart';
import 'package:artist_management/features/activity_log/presentation/bloc/activity_log_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ActivitiesLog extends StatefulWidget {
  const ActivitiesLog({super.key});

  @override
  State<ActivitiesLog> createState() => _ActivitiesLogState();
}

class _ActivitiesLogState extends State<ActivitiesLog> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 10,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 22),
          child: Text(
            'Activity Logs',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        BlocBuilder<ActivityBloc, ActivityState>(
          builder: (context, state) {
            return state.maybeWhen(
              loaded: (activities) => ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 22),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => _ActivityLog(
                  action: activities[index].action,
                  createdAt: activities[index].createdAt,
                  entity: activities[index].entity,
                  description: activities[index].description,
                ),
                separatorBuilder: (context, index) => SizedBox(height: 10),
                itemCount: activities.length,
              ),
              orElse: () => const Center(child: CupertinoActivityIndicator()),
            );
          },
        ),
      ],
    );
  }
}

class _ActivityLog extends StatelessWidget {
  const _ActivityLog({
    required this.description,
    required this.createdAt,
    required this.action,
    required this.entity,
  });

  final String description;
  final DateTime createdAt;
  final String action;
  final String entity;

  @override
  Widget build(BuildContext context) {
    Color insertColor = Color(0xFFEAF3FF);
    return Glow(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: action.toLowerCase() == 'insert' ? insertColor : Colors.amber,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withAlpha(25),
              blurRadius: 15,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: Row(
          spacing: 10,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(35),
              child: Image.asset(
                'assets/gifs/notice.gif',
                height: 25,
                width: 25,
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 5,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(text: action.capitalizeFirstLetter),
                            TextSpan(text: ' '),
                            TextSpan(text: entity.toLowerCase()),
                          ],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      Text(
                        createdAt.formatToDateTimeString(
                          format: 'MMMM dd, yyyy',
                        ),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    description.toParagraph,
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
