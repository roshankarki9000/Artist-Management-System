import 'package:artist_management/core/services/supabase_service.dart';
import 'package:artist_management/features/activity_log/domain/entities/activity_log_model/activity_log_model.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failure/failure.dart';
import '../../../../core/utils/either_or.dart';
import '../../../../core/utils/repository_guard.dart';
import '../../domain/repositories/activity_repository.dart';

@LazySingleton(as: ActivityRepository)
class ActivityRepositoryImpl implements ActivityRepository {
  final SupabaseService supabaseService;
  final RepositoryGuard guard;

  ActivityRepositoryImpl(this.supabaseService, this.guard);

  @override
  Future<EitherOr<Failure, List<ActivityLogModel>>> getActivities() {
    return guard.run(() async {
      final response = await supabaseService.supabase
          .from('activity_logs')
          .select()
          .order('created_at', ascending: false);

      return (response as List)
          .map((json) => ActivityLogModel.fromJson(json))
          .toList();
    });
  }
}
