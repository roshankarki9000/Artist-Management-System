import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failure/failure.dart';
import '../../data/repository/artists_repository.dart';
import '../../domain/entities/artist_model.dart';

part 'artist_bloc.freezed.dart';
part 'artist_event.dart';
part 'artist_state.dart';

@injectable
class ArtistBloc extends Bloc<ArtistEvent, ArtistState> {
  final ArtistRepository repository;

  ArtistBloc(this.repository) : super(const ArtistState.initial()) {
    on<ArtistEvent>((event, emit) async {
      await event.map(
        loadArtists: (e) => _loadArtists(e, emit),
        createArtist: (e) => _createArtist(e, emit),
        updateArtist: (e) => _updateArtist(e, emit),
        deleteArtist: (e) => _deleteArtist(e, emit),
      );
    });
  }

  Future<void> _loadArtists(
    _LoadArtists event,
    Emitter<ArtistState> emit,
  ) async {
    emit(const ArtistState.loading());

    final result = await repository.getArtists();

    result.fold(
      (Failure failure) => emit(ArtistState.error(failure.message)),
      (artists) => emit(ArtistState.loaded(artists)),
    );
  }

  Future<void> _createArtist(
    _CreateArtist event,
    Emitter<ArtistState> emit,
  ) async {
    emit(const ArtistState.loading());

    final result = await repository.createArtist(
      name: event.name,
      bio: event.bio,
    );

    result.fold(
      (failure) => emit(ArtistState.error(failure.message)),
      (_) => add(const ArtistEvent.loadArtists()),
    );
  }

  Future<void> _updateArtist(
    _UpdateArtist event,
    Emitter<ArtistState> emit,
  ) async {
    emit(const ArtistState.loading());

    final result = await repository.updateArtist(
      id: event.id,
      name: event.name,
      bio: event.bio,
    );

    result.fold(
      (failure) => emit(ArtistState.error(failure.message)),
      (_) => add(const ArtistEvent.loadArtists()),
    );
  }

  Future<void> _deleteArtist(
    _DeleteArtist event,
    Emitter<ArtistState> emit,
  ) async {
    emit(const ArtistState.loading());

    final result = await repository.deleteArtist(event.id);

    result.fold(
      (failure) => emit(ArtistState.error(failure.message)),
      (_) => add(const ArtistEvent.loadArtists()),
    );
  }
}
