// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activity_log_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ActivityLogModel {

 String get id; String get action; String get entity; String get description;@JsonKey(name: 'created_at') DateTime get createdAt;
/// Create a copy of ActivityLogModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ActivityLogModelCopyWith<ActivityLogModel> get copyWith => _$ActivityLogModelCopyWithImpl<ActivityLogModel>(this as ActivityLogModel, _$identity);

  /// Serializes this ActivityLogModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ActivityLogModel&&(identical(other.id, id) || other.id == id)&&(identical(other.action, action) || other.action == action)&&(identical(other.entity, entity) || other.entity == entity)&&(identical(other.description, description) || other.description == description)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,action,entity,description,createdAt);

@override
String toString() {
  return 'ActivityLogModel(id: $id, action: $action, entity: $entity, description: $description, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $ActivityLogModelCopyWith<$Res>  {
  factory $ActivityLogModelCopyWith(ActivityLogModel value, $Res Function(ActivityLogModel) _then) = _$ActivityLogModelCopyWithImpl;
@useResult
$Res call({
 String id, String action, String entity, String description,@JsonKey(name: 'created_at') DateTime createdAt
});




}
/// @nodoc
class _$ActivityLogModelCopyWithImpl<$Res>
    implements $ActivityLogModelCopyWith<$Res> {
  _$ActivityLogModelCopyWithImpl(this._self, this._then);

  final ActivityLogModel _self;
  final $Res Function(ActivityLogModel) _then;

/// Create a copy of ActivityLogModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? action = null,Object? entity = null,Object? description = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,action: null == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as String,entity: null == entity ? _self.entity : entity // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [ActivityLogModel].
extension ActivityLogModelPatterns on ActivityLogModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ActivityLogModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ActivityLogModel() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ActivityLogModel value)  $default,){
final _that = this;
switch (_that) {
case _ActivityLogModel():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ActivityLogModel value)?  $default,){
final _that = this;
switch (_that) {
case _ActivityLogModel() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String action,  String entity,  String description, @JsonKey(name: 'created_at')  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ActivityLogModel() when $default != null:
return $default(_that.id,_that.action,_that.entity,_that.description,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String action,  String entity,  String description, @JsonKey(name: 'created_at')  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _ActivityLogModel():
return $default(_that.id,_that.action,_that.entity,_that.description,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String action,  String entity,  String description, @JsonKey(name: 'created_at')  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _ActivityLogModel() when $default != null:
return $default(_that.id,_that.action,_that.entity,_that.description,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ActivityLogModel implements ActivityLogModel {
  const _ActivityLogModel({required this.id, required this.action, required this.entity, required this.description, @JsonKey(name: 'created_at') required this.createdAt});
  factory _ActivityLogModel.fromJson(Map<String, dynamic> json) => _$ActivityLogModelFromJson(json);

@override final  String id;
@override final  String action;
@override final  String entity;
@override final  String description;
@override@JsonKey(name: 'created_at') final  DateTime createdAt;

/// Create a copy of ActivityLogModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ActivityLogModelCopyWith<_ActivityLogModel> get copyWith => __$ActivityLogModelCopyWithImpl<_ActivityLogModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ActivityLogModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ActivityLogModel&&(identical(other.id, id) || other.id == id)&&(identical(other.action, action) || other.action == action)&&(identical(other.entity, entity) || other.entity == entity)&&(identical(other.description, description) || other.description == description)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,action,entity,description,createdAt);

@override
String toString() {
  return 'ActivityLogModel(id: $id, action: $action, entity: $entity, description: $description, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$ActivityLogModelCopyWith<$Res> implements $ActivityLogModelCopyWith<$Res> {
  factory _$ActivityLogModelCopyWith(_ActivityLogModel value, $Res Function(_ActivityLogModel) _then) = __$ActivityLogModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String action, String entity, String description,@JsonKey(name: 'created_at') DateTime createdAt
});




}
/// @nodoc
class __$ActivityLogModelCopyWithImpl<$Res>
    implements _$ActivityLogModelCopyWith<$Res> {
  __$ActivityLogModelCopyWithImpl(this._self, this._then);

  final _ActivityLogModel _self;
  final $Res Function(_ActivityLogModel) _then;

/// Create a copy of ActivityLogModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? action = null,Object? entity = null,Object? description = null,Object? createdAt = null,}) {
  return _then(_ActivityLogModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,action: null == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as String,entity: null == entity ? _self.entity : entity // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
