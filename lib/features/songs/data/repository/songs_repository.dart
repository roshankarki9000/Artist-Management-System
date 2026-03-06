import 'package:artist_management/core/services/supabase_service.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failure/failure.dart';
import '../../../../core/utils/either_or.dart';
import '../../../../core/utils/repository_guard.dart';

@lazySingleton
class SongRepository {
  final SupabaseService supabaseService;
  final RepositoryGuard guard;

  SongRepository(this.supabaseService, this.guard);

  Future<EitherOr<Failure, List<Map<String, dynamic>>>> getSongs(
    String artistId,
  ) {
    return guard.run(() async {
      final res = await supabaseService.supabase
          .from('songs')
          .select()
          .eq("artist_id", artistId);

      return List<Map<String, dynamic>>.from(res);
    });
  }

  Future<EitherOr<Failure, void>> createSong(
    String artistId,
    String title,
    String album,
    String coverUrl,
  ) {
    return guard.run(() async {
      await supabaseService.supabase.from('songs').insert({
        "artist_id": artistId,
        "title": title,
        "album": album,
        "cover_url": coverUrl,
      });
    });
  }

  Future<EitherOr<Failure, void>> deleteSong(String id) {
    return guard.run(() async {
      await supabaseService.supabase.from('songs').delete().eq("id", id);
    });
  }
}
