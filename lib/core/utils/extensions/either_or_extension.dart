import 'package:artist_management/core/utils/either_or.dart';

extension EitherOrX<L, R> on EitherOr<L, R> {
  R? get rightOrNull => switch (this) {
    Right(:final value) => value,
    Left() => null,
  };
}
