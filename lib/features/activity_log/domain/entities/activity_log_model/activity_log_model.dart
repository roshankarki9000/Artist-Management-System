import 'package:freezed_annotation/freezed_annotation.dart';

part 'activity_log_model.freezed.dart';
part 'activity_log_model.g.dart';

@freezed
abstract class ActivityLogModel with _$ActivityLogModel {
  const factory ActivityLogModel({
    required String id,
    required String action,
    required String entity,
    required String description,
    @JsonKey(name: 'created_at') required DateTime createdAt,
  }) = _ActivityLogModel;

  factory ActivityLogModel.fromJson(Map<String, dynamic> json) =>
      _$ActivityLogModelFromJson(json);
}
