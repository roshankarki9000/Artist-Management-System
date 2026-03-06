import 'package:artist_management/features/artists/domain/entities/artist_model.dart';

abstract class ArtistRepository {
  /// Fetch all artists
  Future<List<ArtistModel>> getArtists();

  /// Create a new artist
  Future<void> createArtist({required String name, String? bio});

  /// Update an artist
  Future<void> updateArtist({
    required String id,
    required String name,
    String? bio,
  });

  /// Delete an artist
  Future<void> deleteArtist(String id);
}
