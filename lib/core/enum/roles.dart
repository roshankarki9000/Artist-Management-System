import 'package:freezed_annotation/freezed_annotation.dart';

enum Role {
  @JsonValue('superadmin')
  superadmin,

  @JsonValue('admin')
  admin,
}
