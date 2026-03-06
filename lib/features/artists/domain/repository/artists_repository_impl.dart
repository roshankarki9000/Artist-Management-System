import 'package:artist_management/core/services/supabase_service.dart';
import 'package:artist_management/features/artists/data/repository/artists_repository.dart';
import 'package:artist_management/features/artists/domain/entities/artist_model.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ArtistRepository)
class ArtistRepositoryImpl implements ArtistRepository {
  final SupabaseService supabaseService;

  ArtistRepositoryImpl(this.supabaseService);

  @override
  Future<List<ArtistModel>> getArtists() async {
    final response = await supabaseService.supabase
        .from('artists')
        .select()
        .order('created_at', ascending: false);

    return (response as List)
        .map((json) => ArtistModel.fromJson(json))
        .toList();
  }

  @override
  Future<void> createArtist({required String name, String? bio}) async {
    final user = supabaseService.supabase.auth.currentUser;

    await supabaseService.supabase.from('artists').insert({
      "name": name,
      "bio": bio,
      "created_by": user?.id,
    });
  }

  @override
  Future<void> updateArtist({
    required String id,
    required String name,
    String? bio,
  }) async {
    await supabaseService.supabase
        .from('artists')
        .update({"name": name, "bio": bio})
        .eq('id', id);
  }

  @override
  Future<void> deleteArtist(String id) async {
    await supabaseService.supabase.from('artists').delete().eq('id', id);
  }
}
