import 'package:artist_management/core/error/failure/failure.dart';
import 'package:artist_management/core/utils/either_or.dart';
import 'package:artist_management/features/artists/domain/entities/artist_model.dart';

abstract class ArtistRepository {
  /// Fetch all artists
  Future<EitherOr<Failure, List<ArtistModel>>> getArtists();

  /// Create a new artist
  Future<EitherOr<Failure, void>> createArtist({
    required String name,
    String? bio,
  });

  /// Update an artist
  Future<EitherOr<Failure, void>> updateArtist({
    required String id,
    required String name,
    String? bio,
  });

  /// Delete an artist
  Future<EitherOr<Failure, void>> deleteArtist(String id);
}
