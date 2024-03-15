import 'package:BooruPocket/models/api/user/user.dart';
import 'package:BooruPocket/services/app_context_service.dart';
import 'package:BooruPocket/services/locator_service.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:stack_trace/stack_trace.dart';

loadGenericScope(
  Scope scope,
  Map<String, String>? extras,
  String? transaction,
) {
  extras?.forEach((key, value) {
    scope.setExtra(key, value);
  });
  final calledFrom = Trace.current().frames.elementAt(2);

  scope.transaction = calledFrom.member;

  final authCubit = locator<AppContextService>().danbooruAuthCubit;

  final user = authCubit?.state.user;
  if (user is UserAuthenticated) {
    scope.setUser(
      SentryUser(
        id: user.id.toString(),
        username: user.name,
      ),
    );
  }
}

reportException(
  String name,
  Object originalError, {
  StackTrace? stackTrace,
  Map<String, String>? extras,
  String? transaction,
}) {
  Sentry.captureException(
    originalError,
    stackTrace: stackTrace,
    withScope: (scope) {
      scope.setTag('name', name);
      loadGenericScope(scope, extras, transaction);
    },
  );
}

reportMessage(
  String message, {
  SentryLevel? level,
  Map<String, String>? extras,
  String? transaction,
}) {
  Sentry.captureMessage(
    message,
    level: level,
    withScope: (scope) {
      loadGenericScope(scope, extras, transaction);
    },
  );
}
