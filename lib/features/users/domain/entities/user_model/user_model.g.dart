// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserModel _$UserModelFromJson(Map<String, dynamic> json) => _UserModel(
  name: json['name'] as String,
  id: json['id'] as String,
  email: json['email'] as String,
  role: json['role'] as String,
  createdAt: _$JsonConverterFromJson<String, DateTime>(
    json['created_at'],
    const DateTimeConverter().fromJson,
  ),
);

Map<String, dynamic> _$UserModelToJson(_UserModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'email': instance.email,
      'role': instance.role,
      'created_at': _$JsonConverterToJson<String, DateTime>(
        instance.createdAt,
        const DateTimeConverter().toJson,
      ),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) => json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);
