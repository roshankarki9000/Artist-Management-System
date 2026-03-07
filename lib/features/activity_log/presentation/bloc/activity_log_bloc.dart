import 'package:artist_management/core/error/failure/failure.dart';
import 'package:artist_management/features/activity_log/domain/entities/activity_log_model/activity_log_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repositories/activity_repository.dart';

part 'activity_log_bloc.freezed.dart';
part 'activity_log_event.dart';
part 'activity_log_state.dart';

@injectable
class ActivityBloc extends Bloc<ActivityEvent, ActivityState> {
  final ActivityRepository repository;

  ActivityBloc(this.repository) : super(const ActivityState.initial()) {
    on<ActivityEvent>((event, emit) async {
      await event.map(loadActivities: (e) => _loadActivities(e, emit));
    });
  }

  Future<void> _loadActivities(
    _LoadActivities event,
    Emitter<ActivityState> emit,
  ) async {
    emit(const ActivityState.loading());

    try {
      final result = await repository.getActivities();

      result.fold(
        (Failure failure) {
          emit(ActivityState.error(failure.message));
        },
        (List<ActivityLogModel> logs) {
          emit(ActivityState.loaded(logs));
        },
      );
    } catch (e) {
      emit(ActivityState.error(e.toString()));
    }
  }
}
