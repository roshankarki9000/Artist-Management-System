sealed class EitherOr<L, R> {
  const EitherOr();
  factory EitherOr.left(L l) => Left(l);
  factory EitherOr.right(R r) => Right(r);
  T fold<T>(T Function(L) left, T Function(R) right) => switch (this) {
    Left(:final value) => left(value),
    Right(:final value) => right(value),
  };
}

class Right<L, R> extends EitherOr<L, R> {
  final R _r;
  const Right(this._r);
  R get value => _r;
}

class Left<L, R> extends EitherOr<L, R> {
  final L _l;
  const Left(this._l);
  L get value => _l;
}
