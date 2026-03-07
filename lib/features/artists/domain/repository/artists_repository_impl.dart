import 'package:artist_management/core/services/supabase_service.dart';
import 'package:artist_management/core/utils/either_or.dart';
import 'package:artist_management/core/utils/repository_guard.dart';
import 'package:artist_management/core/error/failure/failure.dart';
import 'package:artist_management/features/artists/data/repository/artists_repository.dart';
import 'package:artist_management/features/artists/domain/entities/artist_model.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ArtistRepository)
class ArtistRepositoryImpl implements ArtistRepository {
  final SupabaseService supabaseService;
  final RepositoryGuard guard;

  ArtistRepositoryImpl(this.supabaseService, this.guard);

  /// -------- GET ARTISTS --------
  @override
  Future<EitherOr<Failure, List<ArtistModel>>> getArtists() {
    return guard.run(() async {
      final response = await supabaseService.supabase
          .from('artists')
          .select()
          .order('created_at', ascending: false);

      return (response as List)
          .map((json) => ArtistModel.fromJson(json))
          .toList();
    });
  }

  /// -------- CREATE ARTIST --------
  @override
  Future<EitherOr<Failure, void>> createArtist({
    required String name,
    String? bio,
  }) {
    return guard.run(() async {
      final user = supabaseService.supabase.auth.currentUser;

      await supabaseService.supabase.from('artists').insert({
        "name": name,
        "bio": bio,
        "created_by": user?.id,
      });
    });
  }

  /// -------- UPDATE ARTIST --------
  @override
  Future<EitherOr<Failure, void>> updateArtist({
    required String id,
    required String name,
    String? bio,
  }) {
    return guard.run(() async {
      await supabaseService.supabase
          .from('artists')
          .update({"name": name, "bio": bio})
          .eq('id', id);
    });
  }

  /// -------- DELETE ARTIST --------
  @override
  Future<EitherOr<Failure, void>> deleteArtist(String id) {
    return guard.run(() async {
      await supabaseService.supabase.from('artists').delete().eq('id', id);
    });
  }
}
