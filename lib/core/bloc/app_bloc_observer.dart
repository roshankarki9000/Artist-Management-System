import 'package:flutter_bloc/flutter_bloc.dart';
import '../utils/logger.dart';

class AppBlocObserver extends BlocObserver {
  /// EVENT
  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);

    event.log(type: "${bloc.runtimeType} Event");
  }

  /// STATE CHANGE (Cubit)
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);

    change.log(type: "${bloc.runtimeType} Change");
  }

  /// TRANSITION (Bloc)
  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);

    transition.log(type: "${bloc.runtimeType} Transition");
  }

  /// ERROR
  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    error.logError(type: "${bloc.runtimeType} Error");

    super.onError(bloc, error, stackTrace);
  }

  /// BLOC CREATED
  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);

    "${bloc.runtimeType} created".log(type: "Bloc");
  }

  /// BLOC CLOSED
  @override
  void onClose(BlocBase bloc) {
    "${bloc.runtimeType} closed".log(type: "Bloc");

    super.onClose(bloc);
  }
}
