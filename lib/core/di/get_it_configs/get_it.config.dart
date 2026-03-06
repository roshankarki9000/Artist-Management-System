// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:artist_management/core/di/network_module.dart' as _i555;
import 'package:artist_management/core/di/register_module.dart' as _i926;
import 'package:artist_management/core/network/connection_monitor.dart'
    as _i250;
import 'package:artist_management/core/network/connectivity_repository.dart'
    as _i72;
import 'package:artist_management/core/network/connectivity_repository_impl.dart'
    as _i142;
import 'package:artist_management/core/network/retry_manager.dart' as _i249;
import 'package:artist_management/core/services/connectivity_service.dart'
    as _i881;
import 'package:artist_management/core/services/supabase_service.dart' as _i957;
import 'package:artist_management/core/utils/repository_guard.dart' as _i432;
import 'package:artist_management/features/artists/data/repository/artists_repository.dart'
    as _i537;
import 'package:artist_management/features/artists/domain/repository/artists_repository_impl.dart'
    as _i291;
import 'package:artist_management/features/auth/data/repositories/auth_repository_impl.dart'
    as _i101;
import 'package:artist_management/features/auth/domain/repository/auth_repository.dart'
    as _i811;
import 'package:artist_management/features/auth/presentation/bloc/auth_bloc.dart'
    as _i148;
import 'package:artist_management/features/connectivity/bloc/connectivity_bloc.dart'
    as _i805;
import 'package:artist_management/features/songs/data/repository/songs_repository.dart'
    as _i657;
import 'package:artist_management/features/users/data/repository/user_repository_impl.dart'
    as _i267;
import 'package:artist_management/features/users/domain/repositories/user_repository.dart'
    as _i176;
import 'package:artist_management/features/users/presentation/bloc/user_bloc.dart'
    as _i55;
import 'package:connectivity_plus/connectivity_plus.dart' as _i895;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i973;
import 'package:supabase_flutter/supabase_flutter.dart' as _i454;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final networkModule = _$NetworkModule();
    final registerModule = _$RegisterModule();
    gh.lazySingleton<_i973.InternetConnectionChecker>(
      () => networkModule.connectionChecker,
    );
    gh.lazySingleton<_i454.SupabaseClient>(() => networkModule.supabaseClient);
    gh.lazySingleton<_i454.GoTrueClient>(() => networkModule.supabaseAuth);
    gh.lazySingleton<_i895.Connectivity>(() => registerModule.connectivity);
    gh.lazySingleton<_i250.ConnectionMonitor>(
      () => _i250.ConnectionMonitor(
        gh<_i895.Connectivity>(),
        gh<_i973.InternetConnectionChecker>(),
      ),
    );
    gh.lazySingleton<_i881.ConnectivityService>(
      () => _i881.ConnectivityService(gh<_i973.InternetConnectionChecker>()),
    );
    gh.lazySingleton<_i249.RetryManager>(
      () => _i249.RetryManager(gh<_i881.ConnectivityService>()),
    );
    gh.lazySingleton<_i957.SupabaseService>(
      () => _i957.SupabaseService(gh<_i454.SupabaseClient>()),
    );
    gh.lazySingleton<_i432.RepositoryGuard>(
      () => _i432.RepositoryGuard(
        gh<_i881.ConnectivityService>(),
        gh<_i249.RetryManager>(),
      ),
    );
    gh.lazySingleton<_i72.ConnectivityRepository>(
      () => _i142.ConnectivityRepositoryImpl(gh<_i250.ConnectionMonitor>()),
    );
    gh.lazySingleton<_i811.AuthRepository>(
      () => _i101.AuthRepositoryImpl(
        gh<_i957.SupabaseService>(),
        gh<_i432.RepositoryGuard>(),
      ),
    );
    gh.factory<_i148.AuthBloc>(
      () => _i148.AuthBloc(gh<_i811.AuthRepository>()),
    );
    gh.lazySingleton<_i657.SongRepository>(
      () => _i657.SongRepository(
        gh<_i957.SupabaseService>(),
        gh<_i432.RepositoryGuard>(),
      ),
    );
    gh.lazySingleton<_i176.UserRepository>(
      () => _i267.UserRepositoryImpl(
        gh<_i957.SupabaseService>(),
        gh<_i432.RepositoryGuard>(),
      ),
    );
    gh.lazySingleton<_i537.ArtistRepository>(
      () => _i291.ArtistRepositoryImpl(gh<_i957.SupabaseService>()),
    );
    gh.factory<_i805.ConnectivityBloc>(
      () => _i805.ConnectivityBloc(gh<_i72.ConnectivityRepository>()),
    );
    gh.factory<_i55.UserBloc>(() => _i55.UserBloc(gh<_i176.UserRepository>()));
    return this;
  }
}

class _$NetworkModule extends _i555.NetworkModule {}

class _$RegisterModule extends _i926.RegisterModule {}
