import 'package:booru_pocket_flutter/repositories/danbooru.dart';
import 'package:booru_pocket_flutter/router/guards/auth_guard.dart';
import 'package:booru_pocket_flutter/router/router.gr.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => (DanbooruRepository()));
  locator.registerSingleton<AppRouter>(AppRouter(authGuard: AuthGuard()));
}
