import 'package:booru_pocket_flutter/repositories/danbooru.dart';
import 'package:booru_pocket_flutter/router/guards/auth_guard.dart';
import 'package:booru_pocket_flutter/router/router.gr.dart';
import 'package:booru_pocket_flutter/services/context_service.dart';
import 'package:booru_pocket_flutter/services/image_downloader_service.dart';
import 'package:booru_pocket_flutter/services/notification_service.dart';
import 'package:booru_pocket_flutter/services/alert_service.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerSingleton<AppRouter>(AppRouter(authGuard: AuthGuard()));
  locator.registerSingleton(NotificationService());
  locator.registerLazySingleton(() => (ContextService()));
  locator.registerLazySingleton(() => (DanbooruRepository()));
  locator.registerLazySingleton(() => (ImageDownloaderService()));
  locator.registerLazySingleton(() => (AlertService()));
}
