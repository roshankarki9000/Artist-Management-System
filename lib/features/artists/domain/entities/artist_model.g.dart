// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artist_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ArtistModel _$ArtistModelFromJson(Map<String, dynamic> json) => _ArtistModel(
  id: json['id'] as String,
  name: json['name'] as String,
  bio: json['bio'] as String?,
  createdBy: json['created_by'] as String?,
  createdAt: DateTime.parse(json['created_at'] as String),
);

Map<String, dynamic> _$ArtistModelToJson(_ArtistModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'bio': instance.bio,
      'created_by': instance.createdBy,
      'created_at': instance.createdAt.toIso8601String(),
    };
