import 'package:sentry_flutter/sentry_flutter.dart';

reportException(
  String name, {
  Object? originalError,
  StackTrace? stackTrace,
  Map<String, String>? extras,
}) {
  Sentry.captureException(
    Exception(name),
    stackTrace: stackTrace,
    withScope: (scope) {
      if (originalError != null) {
        scope.setExtra("original-error", originalError.toString());
      }
      extras?.forEach((key, value) {
        scope.setExtra(key, value);
      });
    },
  );
}
