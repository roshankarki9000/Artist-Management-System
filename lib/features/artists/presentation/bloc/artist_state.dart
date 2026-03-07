part of 'artist_bloc.dart';

@freezed
class ArtistState with _$ArtistState {
  const factory ArtistState.initial() = _Initial;

  const factory ArtistState.loading() = _Loading;

  const factory ArtistState.loaded(List<ArtistModel> artists) = _Loaded;

  const factory ArtistState.error(String message) = _Error;
}
