import 'package:artist_management/core/utils/date_time_helper.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
abstract class UserModel with _$UserModel {
  const factory UserModel({
    required String name,
    required String id,
    required String email,
    required String role,
    @JsonKey(name: 'created_at') @DateTimeConverter() DateTime? createdAt,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, Object?> json) =>
      _$UserModelFromJson(json);
}
