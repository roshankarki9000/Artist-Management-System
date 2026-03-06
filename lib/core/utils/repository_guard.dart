import 'package:artist_management/core/error/failure/failure.dart';
import 'package:artist_management/core/error/failure/failure_mapper.dart';
import 'package:artist_management/core/services/connectivity_service.dart';
import 'package:artist_management/core/utils/either_or.dart';
import 'package:injectable/injectable.dart';

import '../network/retry_manager.dart';

@lazySingleton
class RepositoryGuard {
  final ConnectivityService connectivityService;
  final RetryManager retryManager;

  RepositoryGuard(this.connectivityService, this.retryManager);

  Future<EitherOr<Failure, T>> run<T>(Future<T> Function() action) async {
    final isConnected = await connectivityService.isConnected;

    if (!isConnected) {
      /// queue retry when internet returns
      retryManager.add(() => action());

      return const Left(Failure.network());
    }

    try {
      final result = await action();

      return Right(result);
    } catch (error) {
      final failure = FailureMapper.map(error);

      return Left(failure);
    }
  }
}
