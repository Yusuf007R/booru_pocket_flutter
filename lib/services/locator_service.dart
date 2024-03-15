import 'package:BooruPocket/repositories/danbooru.dart';
import 'package:BooruPocket/router/router.dart';
import 'package:BooruPocket/services/alert_service.dart';
import 'package:BooruPocket/services/app_context_service.dart';
import 'package:BooruPocket/services/image_downloader_service.dart';
import 'package:BooruPocket/services/notification_service.dart';
import 'package:BooruPocket/services/permission_service.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

Future<void> setupLocator() async {
  final notificationService = await NotificationService.init();

  locator.registerSingleton(AppRouter());
  locator.registerSingletonAsync(() async => notificationService);

  locator.registerSingletonAsync(
    () async => await PermissionService.init(),
    dependsOn: [NotificationService],
  );
  locator.registerLazySingleton(() => (AppContextService()));
  locator.registerLazySingleton(() => (DanbooruRepository()));
  locator.registerLazySingleton(() => (ImageDownloaderService()));
  locator.registerLazySingleton(() => (AlertService()));
}
