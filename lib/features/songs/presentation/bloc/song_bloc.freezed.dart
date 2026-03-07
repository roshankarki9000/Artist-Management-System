// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'song_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SongEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SongEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SongEvent()';
}


}

/// @nodoc
class $SongEventCopyWith<$Res>  {
$SongEventCopyWith(SongEvent _, $Res Function(SongEvent) __);
}


/// Adds pattern-matching-related methods to [SongEvent].
extension SongEventPatterns on SongEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _LoadSongs value)?  loadSongs,TResult Function( _LoadAllSongs value)?  loadAllSongs,TResult Function( _CreateSong value)?  createSong,TResult Function( _DeleteSong value)?  deleteSong,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoadSongs() when loadSongs != null:
return loadSongs(_that);case _LoadAllSongs() when loadAllSongs != null:
return loadAllSongs(_that);case _CreateSong() when createSong != null:
return createSong(_that);case _DeleteSong() when deleteSong != null:
return deleteSong(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _LoadSongs value)  loadSongs,required TResult Function( _LoadAllSongs value)  loadAllSongs,required TResult Function( _CreateSong value)  createSong,required TResult Function( _DeleteSong value)  deleteSong,}){
final _that = this;
switch (_that) {
case _LoadSongs():
return loadSongs(_that);case _LoadAllSongs():
return loadAllSongs(_that);case _CreateSong():
return createSong(_that);case _DeleteSong():
return deleteSong(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _LoadSongs value)?  loadSongs,TResult? Function( _LoadAllSongs value)?  loadAllSongs,TResult? Function( _CreateSong value)?  createSong,TResult? Function( _DeleteSong value)?  deleteSong,}){
final _that = this;
switch (_that) {
case _LoadSongs() when loadSongs != null:
return loadSongs(_that);case _LoadAllSongs() when loadAllSongs != null:
return loadAllSongs(_that);case _CreateSong() when createSong != null:
return createSong(_that);case _DeleteSong() when deleteSong != null:
return deleteSong(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String artistId)?  loadSongs,TResult Function()?  loadAllSongs,TResult Function( String artistId,  String title,  String album,  String coverUrl)?  createSong,TResult Function( String id,  String artistId)?  deleteSong,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoadSongs() when loadSongs != null:
return loadSongs(_that.artistId);case _LoadAllSongs() when loadAllSongs != null:
return loadAllSongs();case _CreateSong() when createSong != null:
return createSong(_that.artistId,_that.title,_that.album,_that.coverUrl);case _DeleteSong() when deleteSong != null:
return deleteSong(_that.id,_that.artistId);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String artistId)  loadSongs,required TResult Function()  loadAllSongs,required TResult Function( String artistId,  String title,  String album,  String coverUrl)  createSong,required TResult Function( String id,  String artistId)  deleteSong,}) {final _that = this;
switch (_that) {
case _LoadSongs():
return loadSongs(_that.artistId);case _LoadAllSongs():
return loadAllSongs();case _CreateSong():
return createSong(_that.artistId,_that.title,_that.album,_that.coverUrl);case _DeleteSong():
return deleteSong(_that.id,_that.artistId);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String artistId)?  loadSongs,TResult? Function()?  loadAllSongs,TResult? Function( String artistId,  String title,  String album,  String coverUrl)?  createSong,TResult? Function( String id,  String artistId)?  deleteSong,}) {final _that = this;
switch (_that) {
case _LoadSongs() when loadSongs != null:
return loadSongs(_that.artistId);case _LoadAllSongs() when loadAllSongs != null:
return loadAllSongs();case _CreateSong() when createSong != null:
return createSong(_that.artistId,_that.title,_that.album,_that.coverUrl);case _DeleteSong() when deleteSong != null:
return deleteSong(_that.id,_that.artistId);case _:
  return null;

}
}

}

/// @nodoc


class _LoadSongs implements SongEvent {
  const _LoadSongs(this.artistId);
  

 final  String artistId;

/// Create a copy of SongEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadSongsCopyWith<_LoadSongs> get copyWith => __$LoadSongsCopyWithImpl<_LoadSongs>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadSongs&&(identical(other.artistId, artistId) || other.artistId == artistId));
}


@override
int get hashCode => Object.hash(runtimeType,artistId);

@override
String toString() {
  return 'SongEvent.loadSongs(artistId: $artistId)';
}


}

/// @nodoc
abstract mixin class _$LoadSongsCopyWith<$Res> implements $SongEventCopyWith<$Res> {
  factory _$LoadSongsCopyWith(_LoadSongs value, $Res Function(_LoadSongs) _then) = __$LoadSongsCopyWithImpl;
@useResult
$Res call({
 String artistId
});




}
/// @nodoc
class __$LoadSongsCopyWithImpl<$Res>
    implements _$LoadSongsCopyWith<$Res> {
  __$LoadSongsCopyWithImpl(this._self, this._then);

  final _LoadSongs _self;
  final $Res Function(_LoadSongs) _then;

/// Create a copy of SongEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? artistId = null,}) {
  return _then(_LoadSongs(
null == artistId ? _self.artistId : artistId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _LoadAllSongs implements SongEvent {
  const _LoadAllSongs();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadAllSongs);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SongEvent.loadAllSongs()';
}


}




/// @nodoc


class _CreateSong implements SongEvent {
  const _CreateSong({required this.artistId, required this.title, required this.album, required this.coverUrl});
  

 final  String artistId;
 final  String title;
 final  String album;
 final  String coverUrl;

/// Create a copy of SongEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateSongCopyWith<_CreateSong> get copyWith => __$CreateSongCopyWithImpl<_CreateSong>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateSong&&(identical(other.artistId, artistId) || other.artistId == artistId)&&(identical(other.title, title) || other.title == title)&&(identical(other.album, album) || other.album == album)&&(identical(other.coverUrl, coverUrl) || other.coverUrl == coverUrl));
}


@override
int get hashCode => Object.hash(runtimeType,artistId,title,album,coverUrl);

@override
String toString() {
  return 'SongEvent.createSong(artistId: $artistId, title: $title, album: $album, coverUrl: $coverUrl)';
}


}

/// @nodoc
abstract mixin class _$CreateSongCopyWith<$Res> implements $SongEventCopyWith<$Res> {
  factory _$CreateSongCopyWith(_CreateSong value, $Res Function(_CreateSong) _then) = __$CreateSongCopyWithImpl;
@useResult
$Res call({
 String artistId, String title, String album, String coverUrl
});




}
/// @nodoc
class __$CreateSongCopyWithImpl<$Res>
    implements _$CreateSongCopyWith<$Res> {
  __$CreateSongCopyWithImpl(this._self, this._then);

  final _CreateSong _self;
  final $Res Function(_CreateSong) _then;

/// Create a copy of SongEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? artistId = null,Object? title = null,Object? album = null,Object? coverUrl = null,}) {
  return _then(_CreateSong(
artistId: null == artistId ? _self.artistId : artistId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,album: null == album ? _self.album : album // ignore: cast_nullable_to_non_nullable
as String,coverUrl: null == coverUrl ? _self.coverUrl : coverUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _DeleteSong implements SongEvent {
  const _DeleteSong({required this.id, required this.artistId});
  

 final  String id;
 final  String artistId;

/// Create a copy of SongEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteSongCopyWith<_DeleteSong> get copyWith => __$DeleteSongCopyWithImpl<_DeleteSong>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteSong&&(identical(other.id, id) || other.id == id)&&(identical(other.artistId, artistId) || other.artistId == artistId));
}


@override
int get hashCode => Object.hash(runtimeType,id,artistId);

@override
String toString() {
  return 'SongEvent.deleteSong(id: $id, artistId: $artistId)';
}


}

/// @nodoc
abstract mixin class _$DeleteSongCopyWith<$Res> implements $SongEventCopyWith<$Res> {
  factory _$DeleteSongCopyWith(_DeleteSong value, $Res Function(_DeleteSong) _then) = __$DeleteSongCopyWithImpl;
@useResult
$Res call({
 String id, String artistId
});




}
/// @nodoc
class __$DeleteSongCopyWithImpl<$Res>
    implements _$DeleteSongCopyWith<$Res> {
  __$DeleteSongCopyWithImpl(this._self, this._then);

  final _DeleteSong _self;
  final $Res Function(_DeleteSong) _then;

/// Create a copy of SongEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? artistId = null,}) {
  return _then(_DeleteSong(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,artistId: null == artistId ? _self.artistId : artistId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$SongState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SongState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SongState()';
}


}

/// @nodoc
class $SongStateCopyWith<$Res>  {
$SongStateCopyWith(SongState _, $Res Function(SongState) __);
}


/// Adds pattern-matching-related methods to [SongState].
extension SongStatePatterns on SongState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _Loaded value)?  loaded,TResult Function( _Error value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _Error() when error != null:
return error(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _Loaded value)  loaded,required TResult Function( _Error value)  error,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _Loaded():
return loaded(_that);case _Error():
return error(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _Loaded value)?  loaded,TResult? Function( _Error value)?  error,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _Error() when error != null:
return error(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<SongModel> songs)?  loaded,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.songs);case _Error() when error != null:
return error(_that.message);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<SongModel> songs)  loaded,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _Loaded():
return loaded(_that.songs);case _Error():
return error(_that.message);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<SongModel> songs)?  loaded,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.songs);case _Error() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements SongState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SongState.initial()';
}


}




/// @nodoc


class _Loading implements SongState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SongState.loading()';
}


}




/// @nodoc


class _Loaded implements SongState {
  const _Loaded(final  List<SongModel> songs): _songs = songs;
  

 final  List<SongModel> _songs;
 List<SongModel> get songs {
  if (_songs is EqualUnmodifiableListView) return _songs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_songs);
}


/// Create a copy of SongState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedCopyWith<_Loaded> get copyWith => __$LoadedCopyWithImpl<_Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded&&const DeepCollectionEquality().equals(other._songs, _songs));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_songs));

@override
String toString() {
  return 'SongState.loaded(songs: $songs)';
}


}

/// @nodoc
abstract mixin class _$LoadedCopyWith<$Res> implements $SongStateCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) _then) = __$LoadedCopyWithImpl;
@useResult
$Res call({
 List<SongModel> songs
});




}
/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(this._self, this._then);

  final _Loaded _self;
  final $Res Function(_Loaded) _then;

/// Create a copy of SongState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? songs = null,}) {
  return _then(_Loaded(
null == songs ? _self._songs : songs // ignore: cast_nullable_to_non_nullable
as List<SongModel>,
  ));
}


}

/// @nodoc


class _Error implements SongState {
  const _Error(this.message);
  

 final  String message;

/// Create a copy of SongState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorCopyWith<_Error> get copyWith => __$ErrorCopyWithImpl<_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'SongState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $SongStateCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) _then) = __$ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ErrorCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(this._self, this._then);

  final _Error _self;
  final $Res Function(_Error) _then;

/// Create a copy of SongState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
