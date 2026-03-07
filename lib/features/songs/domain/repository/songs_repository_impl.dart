import 'package:artist_management/core/services/supabase_service.dart';
import 'package:artist_management/features/songs/data/repository/songs_repository.dart';
import 'package:artist_management/features/songs/domain/entities/song_model.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failure/failure.dart';
import '../../../../core/utils/either_or.dart';
import '../../../../core/utils/repository_guard.dart';

@LazySingleton(as: SongRepository)
class SongRepositoryImpl implements SongRepository {
  final SupabaseService supabaseService;
  final RepositoryGuard guard;

  SongRepositoryImpl(this.supabaseService, this.guard);

  /// ---------------- GET SONGS ----------------
  @override
  Future<EitherOr<Failure, List<SongModel>>> getSongs(String artistId) {
    return guard.run(() async {
      final res = await supabaseService.supabase
          .from('songs')
          .select()
          .eq("artist_id", artistId)
          .order("created_at", ascending: false);

      return (res as List).map((json) => SongModel.fromJson(json)).toList();
    });
  }

  @override
  Future<EitherOr<Failure, List<SongModel>>> getAllSongs() {
    return guard.run(() async {
      final res = await supabaseService.supabase
          .from('songs')
          .select()
          .order('created_at', ascending: false);
      return (res as List).map((json) => SongModel.fromJson(json)).toList();
    });
  }

  /// ---------------- CREATE SONG ----------------
  @override
  Future<EitherOr<Failure, void>> createSong({
    required String artistId,
    required String title,
    required String album,
    required String coverUrl,
  }) {
    return guard.run(() async {
      await supabaseService.supabase.from('songs').insert({
        "artist_id": artistId,
        "title": title,
        "album": album,
        "cover_url": coverUrl,
      });
    });
  }

  /// ---------------- DELETE SONG ----------------
  @override
  Future<EitherOr<Failure, void>> deleteSong(String id) {
    return guard.run(() async {
      await supabaseService.supabase.from('songs').delete().eq("id", id);
    });
  }
}
