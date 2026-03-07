part of 'song_bloc.dart';

@freezed
class SongState with _$SongState {
  const factory SongState.initial() = _Initial;

  const factory SongState.loading() = _Loading;

  const factory SongState.loaded(List<SongModel> songs) = _Loaded;

  const factory SongState.error(String message) = _Error;
}
