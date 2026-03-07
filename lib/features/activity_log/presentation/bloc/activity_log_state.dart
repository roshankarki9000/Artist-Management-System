part of 'activity_log_bloc.dart';

@freezed
class ActivityState with _$ActivityState {
  const factory ActivityState.initial() = _Initial;

  const factory ActivityState.loading() = _Loading;

  const factory ActivityState.loaded(List<ActivityLogModel> logs) = _Loaded;

  const factory ActivityState.error(String message) = _Error;
}
