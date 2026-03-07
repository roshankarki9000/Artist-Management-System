// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_log_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ActivityLogModel _$ActivityLogModelFromJson(Map<String, dynamic> json) =>
    _ActivityLogModel(
      id: json['id'] as String,
      action: json['action'] as String,
      entity: json['entity'] as String,
      description: json['description'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$ActivityLogModelToJson(_ActivityLogModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'action': instance.action,
      'entity': instance.entity,
      'description': instance.description,
      'created_at': instance.createdAt.toIso8601String(),
    };
