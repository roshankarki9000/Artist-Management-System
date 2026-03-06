import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class BaseStreamBloc<Event, State, StreamType>
    extends Bloc<Event, State> {
  StreamSubscription<StreamType>? _subscription;

  BaseStreamBloc(super.initialState);

  /// Call this to start listening to a stream
  void listenToStream(
    Stream<StreamType> stream,
    void Function(StreamType data) onData,
  ) {
    _subscription?.cancel();
    _subscription = stream.listen(onData);
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }
}
