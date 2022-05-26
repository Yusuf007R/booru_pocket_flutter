import 'package:BooruPocket/repositories/danbooru.dart';
import 'package:BooruPocket/router/guards/auth_guard.dart';
import 'package:BooruPocket/router/router.gr.dart';
import 'package:BooruPocket/services/context_service.dart';
import 'package:BooruPocket/services/image_downloader_service.dart';
import 'package:BooruPocket/services/notification_service.dart';
import 'package:BooruPocket/services/alert_service.dart';
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
