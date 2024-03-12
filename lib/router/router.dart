import 'package:BooruPocket/router/guards/auth_guard.dart';
import 'package:BooruPocket/router/router.gr.dart';
import 'package:auto_route/auto_route.dart';

// @MaterialAutoRouter(
//   replaceInRouteName: 'Screen,Route',
//   routes: <AutoRoute>[

//   ],
// )
// class $AppRouter {}

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          initial: true,
          page: HomeRoute.page,
          children: [
            AutoRoute(
              page: PostRouteWrapper.page,
              initial: true,
              children: [
                AutoRoute(
                  initial: true,
                  page: PostRoute.page,
                ),
              ],
            ),
          ],
        ),
        AutoRoute(
          page: PostRouteWrapper.page,
          guards: [AuthGuard()],
          children: [
            AutoRoute(
              initial: true,
              page: PostRoute.page,
            ),
          ],
        ),
        AutoRoute(
          page: LoginRoute.page,
        ),
        AutoRoute(
          page: SettingsRoute.page,
        ),
        AutoRoute(
          guards: [AuthGuard()],
          page: UserProfileRoute.page,
        ),
        AutoRoute(
          page: PostDetailRoute.page,
        ),
      ];
}
