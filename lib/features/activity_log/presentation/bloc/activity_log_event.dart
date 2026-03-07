part of 'activity_log_bloc.dart';

@freezed
class ActivityEvent with _$ActivityEvent {
  const factory ActivityEvent.loadActivities() = _LoadActivities;
}
