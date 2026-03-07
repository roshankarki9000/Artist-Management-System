import 'package:artist_management/features/songs/domain/entities/song_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failure/failure.dart';
import '../../data/repository/songs_repository.dart';

part 'song_bloc.freezed.dart';
part 'song_event.dart';
part 'song_state.dart';

@injectable
class SongBloc extends Bloc<SongEvent, SongState> {
  final SongRepository repository;

  SongBloc(this.repository) : super(const SongState.initial()) {
    on<SongEvent>((event, emit) async {
      await event.map(
        loadSongs: (e) => _loadSongs(e, emit),
        createSong: (e) => _createSong(e, emit),
        deleteSong: (e) => _deleteSong(e, emit),
        loadAllSongs: (e) => _loadAllSongs(e, emit),
      );
    });
  }

  Future<void> _loadSongs(_LoadSongs event, Emitter<SongState> emit) async {
    emit(const SongState.loading());

    final result = await repository.getSongs(event.artistId);

    result.fold(
      (Failure failure) => emit(SongState.error(failure.message)),
      (songs) => emit(SongState.loaded(songs)),
    );
  }

  Future<void> _loadAllSongs(
    _LoadAllSongs event,
    Emitter<SongState> emit,
  ) async {
    emit(const SongState.loading());

    final result = await repository.getAllSongs();

    result.fold(
      (failure) => emit(SongState.error(failure.message)),
      (songs) => emit(SongState.loaded(songs)),
    );
  }

  Future<void> _createSong(_CreateSong event, Emitter<SongState> emit) async {
    emit(const SongState.loading());

    final result = await repository.createSong(
      artistId: event.artistId,
      title: event.title,
      album: event.album,
      coverUrl: event.coverUrl,
    );

    result.fold(
      (failure) => emit(SongState.error(failure.message)),
      (_) => add(SongEvent.loadSongs(event.artistId)),
    );
  }

  Future<void> _deleteSong(_DeleteSong event, Emitter<SongState> emit) async {
    emit(const SongState.loading());

    final result = await repository.deleteSong(event.id);

    result.fold(
      (failure) => emit(SongState.error(failure.message)),
      (_) => add(SongEvent.loadSongs(event.artistId)),
    );
  }
}
