import 'package:artist_management/core/error/failure/failure.dart';
import 'package:artist_management/core/utils/either_or.dart';
import 'package:artist_management/features/activity_log/domain/entities/activity_log_model/activity_log_model.dart';

abstract class ActivityRepository {
  Future<EitherOr<Failure, List<ActivityLogModel>>> getActivities();
}
