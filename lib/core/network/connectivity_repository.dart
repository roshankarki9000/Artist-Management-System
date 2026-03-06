import 'package:artist_management/core/error/failure/failure.dart';

import '../../../core/utils/either_or.dart';

abstract class ConnectivityRepository {
  Future<EitherOr<Failure, bool>> isConnected();
  Stream<EitherOr<Failure, bool>> get connectionStream;
}
