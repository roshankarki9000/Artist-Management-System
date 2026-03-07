import 'package:artist_management/features/songs/domain/entities/song_model.dart';

import '../../../../core/error/failure/failure.dart';
import '../../../../core/utils/either_or.dart';

abstract class SongRepository {
  Future<EitherOr<Failure, List<SongModel>>> getSongs(String artistId);
  Future<EitherOr<Failure, List<SongModel>>> getAllSongs();
  Future<EitherOr<Failure, void>> createSong({
    required String artistId,
    required String title,
    required String album,
    required String coverUrl,
  });

  Future<EitherOr<Failure, void>> deleteSong(String id);
}
