part of 'artist_bloc.dart';

@freezed
abstract class ArtistEvent with _$ArtistEvent {
  const factory ArtistEvent.loadArtists() = _LoadArtists;

  const factory ArtistEvent.createArtist({required String name, String? bio}) =
      _CreateArtist;

  const factory ArtistEvent.updateArtist({
    required String id,
    required String name,
    String? bio,
  }) = _UpdateArtist;

  const factory ArtistEvent.deleteArtist(String id) = _DeleteArtist;
}
