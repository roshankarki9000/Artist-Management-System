part of 'song_bloc.dart';

@freezed
abstract class SongEvent with _$SongEvent {
  const factory SongEvent.loadSongs(String artistId) = _LoadSongs;
  const factory SongEvent.loadAllSongs() = _LoadAllSongs;
  const factory SongEvent.createSong({
    required String artistId,
    required String title,
    required String album,
    required String coverUrl,
  }) = _CreateSong;

  const factory SongEvent.deleteSong({
    required String id,
    required String artistId,
  }) = _DeleteSong;
}
