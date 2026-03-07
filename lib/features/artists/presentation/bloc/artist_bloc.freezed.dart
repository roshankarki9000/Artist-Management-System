// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'artist_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ArtistEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArtistEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ArtistEvent()';
}


}

/// @nodoc
class $ArtistEventCopyWith<$Res>  {
$ArtistEventCopyWith(ArtistEvent _, $Res Function(ArtistEvent) __);
}


/// Adds pattern-matching-related methods to [ArtistEvent].
extension ArtistEventPatterns on ArtistEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _LoadArtists value)?  loadArtists,TResult Function( _CreateArtist value)?  createArtist,TResult Function( _UpdateArtist value)?  updateArtist,TResult Function( _DeleteArtist value)?  deleteArtist,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoadArtists() when loadArtists != null:
return loadArtists(_that);case _CreateArtist() when createArtist != null:
return createArtist(_that);case _UpdateArtist() when updateArtist != null:
return updateArtist(_that);case _DeleteArtist() when deleteArtist != null:
return deleteArtist(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _LoadArtists value)  loadArtists,required TResult Function( _CreateArtist value)  createArtist,required TResult Function( _UpdateArtist value)  updateArtist,required TResult Function( _DeleteArtist value)  deleteArtist,}){
final _that = this;
switch (_that) {
case _LoadArtists():
return loadArtists(_that);case _CreateArtist():
return createArtist(_that);case _UpdateArtist():
return updateArtist(_that);case _DeleteArtist():
return deleteArtist(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _LoadArtists value)?  loadArtists,TResult? Function( _CreateArtist value)?  createArtist,TResult? Function( _UpdateArtist value)?  updateArtist,TResult? Function( _DeleteArtist value)?  deleteArtist,}){
final _that = this;
switch (_that) {
case _LoadArtists() when loadArtists != null:
return loadArtists(_that);case _CreateArtist() when createArtist != null:
return createArtist(_that);case _UpdateArtist() when updateArtist != null:
return updateArtist(_that);case _DeleteArtist() when deleteArtist != null:
return deleteArtist(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loadArtists,TResult Function( String name,  String? bio)?  createArtist,TResult Function( String id,  String name,  String? bio)?  updateArtist,TResult Function( String id)?  deleteArtist,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoadArtists() when loadArtists != null:
return loadArtists();case _CreateArtist() when createArtist != null:
return createArtist(_that.name,_that.bio);case _UpdateArtist() when updateArtist != null:
return updateArtist(_that.id,_that.name,_that.bio);case _DeleteArtist() when deleteArtist != null:
return deleteArtist(_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loadArtists,required TResult Function( String name,  String? bio)  createArtist,required TResult Function( String id,  String name,  String? bio)  updateArtist,required TResult Function( String id)  deleteArtist,}) {final _that = this;
switch (_that) {
case _LoadArtists():
return loadArtists();case _CreateArtist():
return createArtist(_that.name,_that.bio);case _UpdateArtist():
return updateArtist(_that.id,_that.name,_that.bio);case _DeleteArtist():
return deleteArtist(_that.id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loadArtists,TResult? Function( String name,  String? bio)?  createArtist,TResult? Function( String id,  String name,  String? bio)?  updateArtist,TResult? Function( String id)?  deleteArtist,}) {final _that = this;
switch (_that) {
case _LoadArtists() when loadArtists != null:
return loadArtists();case _CreateArtist() when createArtist != null:
return createArtist(_that.name,_that.bio);case _UpdateArtist() when updateArtist != null:
return updateArtist(_that.id,_that.name,_that.bio);case _DeleteArtist() when deleteArtist != null:
return deleteArtist(_that.id);case _:
  return null;

}
}

}

/// @nodoc


class _LoadArtists implements ArtistEvent {
  const _LoadArtists();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadArtists);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ArtistEvent.loadArtists()';
}


}




/// @nodoc


class _CreateArtist implements ArtistEvent {
  const _CreateArtist({required this.name, this.bio});
  

 final  String name;
 final  String? bio;

/// Create a copy of ArtistEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateArtistCopyWith<_CreateArtist> get copyWith => __$CreateArtistCopyWithImpl<_CreateArtist>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateArtist&&(identical(other.name, name) || other.name == name)&&(identical(other.bio, bio) || other.bio == bio));
}


@override
int get hashCode => Object.hash(runtimeType,name,bio);

@override
String toString() {
  return 'ArtistEvent.createArtist(name: $name, bio: $bio)';
}


}

/// @nodoc
abstract mixin class _$CreateArtistCopyWith<$Res> implements $ArtistEventCopyWith<$Res> {
  factory _$CreateArtistCopyWith(_CreateArtist value, $Res Function(_CreateArtist) _then) = __$CreateArtistCopyWithImpl;
@useResult
$Res call({
 String name, String? bio
});




}
/// @nodoc
class __$CreateArtistCopyWithImpl<$Res>
    implements _$CreateArtistCopyWith<$Res> {
  __$CreateArtistCopyWithImpl(this._self, this._then);

  final _CreateArtist _self;
  final $Res Function(_CreateArtist) _then;

/// Create a copy of ArtistEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? name = null,Object? bio = freezed,}) {
  return _then(_CreateArtist(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,bio: freezed == bio ? _self.bio : bio // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _UpdateArtist implements ArtistEvent {
  const _UpdateArtist({required this.id, required this.name, this.bio});
  

 final  String id;
 final  String name;
 final  String? bio;

/// Create a copy of ArtistEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateArtistCopyWith<_UpdateArtist> get copyWith => __$UpdateArtistCopyWithImpl<_UpdateArtist>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateArtist&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.bio, bio) || other.bio == bio));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,bio);

@override
String toString() {
  return 'ArtistEvent.updateArtist(id: $id, name: $name, bio: $bio)';
}


}

/// @nodoc
abstract mixin class _$UpdateArtistCopyWith<$Res> implements $ArtistEventCopyWith<$Res> {
  factory _$UpdateArtistCopyWith(_UpdateArtist value, $Res Function(_UpdateArtist) _then) = __$UpdateArtistCopyWithImpl;
@useResult
$Res call({
 String id, String name, String? bio
});




}
/// @nodoc
class __$UpdateArtistCopyWithImpl<$Res>
    implements _$UpdateArtistCopyWith<$Res> {
  __$UpdateArtistCopyWithImpl(this._self, this._then);

  final _UpdateArtist _self;
  final $Res Function(_UpdateArtist) _then;

/// Create a copy of ArtistEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? bio = freezed,}) {
  return _then(_UpdateArtist(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,bio: freezed == bio ? _self.bio : bio // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _DeleteArtist implements ArtistEvent {
  const _DeleteArtist(this.id);
  

 final  String id;

/// Create a copy of ArtistEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteArtistCopyWith<_DeleteArtist> get copyWith => __$DeleteArtistCopyWithImpl<_DeleteArtist>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteArtist&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'ArtistEvent.deleteArtist(id: $id)';
}


}

/// @nodoc
abstract mixin class _$DeleteArtistCopyWith<$Res> implements $ArtistEventCopyWith<$Res> {
  factory _$DeleteArtistCopyWith(_DeleteArtist value, $Res Function(_DeleteArtist) _then) = __$DeleteArtistCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class __$DeleteArtistCopyWithImpl<$Res>
    implements _$DeleteArtistCopyWith<$Res> {
  __$DeleteArtistCopyWithImpl(this._self, this._then);

  final _DeleteArtist _self;
  final $Res Function(_DeleteArtist) _then;

/// Create a copy of ArtistEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_DeleteArtist(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$ArtistState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArtistState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ArtistState()';
}


}

/// @nodoc
class $ArtistStateCopyWith<$Res>  {
$ArtistStateCopyWith(ArtistState _, $Res Function(ArtistState) __);
}


/// Adds pattern-matching-related methods to [ArtistState].
extension ArtistStatePatterns on ArtistState {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<ArtistModel> artists)?  loaded,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.artists);case _Error() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<ArtistModel> artists)  loaded,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _Loaded():
return loaded(_that.artists);case _Error():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<ArtistModel> artists)?  loaded,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.artists);case _Error() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements ArtistState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ArtistState.initial()';
}


}




/// @nodoc


class _Loading implements ArtistState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ArtistState.loading()';
}


}




/// @nodoc


class _Loaded implements ArtistState {
  const _Loaded(final  List<ArtistModel> artists): _artists = artists;
  

 final  List<ArtistModel> _artists;
 List<ArtistModel> get artists {
  if (_artists is EqualUnmodifiableListView) return _artists;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_artists);
}


/// Create a copy of ArtistState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedCopyWith<_Loaded> get copyWith => __$LoadedCopyWithImpl<_Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded&&const DeepCollectionEquality().equals(other._artists, _artists));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_artists));

@override
String toString() {
  return 'ArtistState.loaded(artists: $artists)';
}


}

/// @nodoc
abstract mixin class _$LoadedCopyWith<$Res> implements $ArtistStateCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) _then) = __$LoadedCopyWithImpl;
@useResult
$Res call({
 List<ArtistModel> artists
});




}
/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(this._self, this._then);

  final _Loaded _self;
  final $Res Function(_Loaded) _then;

/// Create a copy of ArtistState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? artists = null,}) {
  return _then(_Loaded(
null == artists ? _self._artists : artists // ignore: cast_nullable_to_non_nullable
as List<ArtistModel>,
  ));
}


}

/// @nodoc


class _Error implements ArtistState {
  const _Error(this.message);
  

 final  String message;

/// Create a copy of ArtistState
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
  return 'ArtistState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $ArtistStateCopyWith<$Res> {
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

/// Create a copy of ArtistState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
