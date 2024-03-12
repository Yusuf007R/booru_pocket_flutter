import 'package:BooruPocket/blocs/danbooru_auth_cubit/danbooru_auth_cubit.dart';
import 'package:BooruPocket/models/api/user/user.dart';
import 'package:BooruPocket/services/context_service.dart';
import 'package:BooruPocket/services/locator_service.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

loadWithScope(Scope scope, Map<String, String>? extras) {
  extras?.forEach((key, value) {
    scope.setExtra(key, value);
  });
  DanbooruAuthCubit? authCubit = locator<ContextService>().danbooruAuthCubit;

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
  String name, {
  Object? originalError,
  StackTrace? stackTrace,
  Map<String, String>? extras,
}) {
  Sentry.captureException(
    originalError ?? Exception(name),
    stackTrace: stackTrace,
    withScope: (scope) {
      scope.setTag('name', name);
      loadWithScope(scope, extras);
    },
  );
}

reportMessage(
  String message, {
  SentryLevel? level,
  Map<String, String>? extras,
}) {
  Sentry.captureMessage(
    message,
    level: level,
    withScope: (scope) {
      loadWithScope(scope, extras);
    },
  );
}
