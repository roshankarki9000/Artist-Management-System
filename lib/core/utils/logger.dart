import 'dart:developer' as d;

extension LogExtension on Object? {
  void log({String? type}) =>
      d.log('\x1B[33m [${type ?? 'Log'}] ${this?.toString()}\x1B[0m');
  void logError({String? type}) =>
      d.log('\x1B[31m [${type ?? 'Log'}] ${this?.toString()}\x1B[0m');

  void logDio() => d.log('\x1B[32m [ Dio ] ${this?.toString()}\x1B[0m');
}
