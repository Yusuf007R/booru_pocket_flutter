import 'package:auto_route/auto_route.dart';
import 'package:booru_pocket_flutter/router/guards/auth_guard.dart';
import 'package:booru_pocket_flutter/router/route_wrappers/main_wrapper.dart';
import 'package:booru_pocket_flutter/router/route_wrappers/popular_route_wrapper.dart';
import 'package:booru_pocket_flutter/router/route_wrappers/post_route_wrapper.dart';
import 'package:booru_pocket_flutter/screens/home_screen.dart';
import 'package:booru_pocket_flutter/screens/login_screen.dart';
import 'package:booru_pocket_flutter/screens/popular_screen.dart';
import 'package:booru_pocket_flutter/screens/post_detail_screen.dart';
import 'package:booru_pocket_flutter/screens/post_screen.dart';
import 'package:booru_pocket_flutter/screens/user_profile_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    AutoRoute(
      initial: true,
      name: 'MainRoute',
      page: MainWrapper,
      children: [
        AutoRoute(
          initial: true,
          page: HomeScreen,
          children: [
            AutoRoute(
              page: PostRouteWrapper,
              name: 'PostRouteHomePage',
              initial: true,
              children: [
                AutoRoute(
                  initial: true,
                  page: PostScreen,
                  name: 'PostScreenHomePageInternal',
                )
              ],
            ),
            AutoRoute(
              page: PopularRouteWrapper,
              name: 'PopularRouteHomePage',
              children: [
                AutoRoute(
                  initial: true,
                  page: PopularScreen,
                  name: 'PopularScreenHomePageInternal',
                )
              ],
            ),
          ],
        ),
        AutoRoute(
          page: PostRouteWrapper,
          guards: [AuthGuard],
          name: 'PostRoute',
          children: [
            AutoRoute(
              initial: true,
              page: PostScreen,
              name: 'PostScreenPushed',
            )
          ],
        ),
        AutoRoute(
          page: LoginScreen,
        ),
        AutoRoute(
          guards: [AuthGuard],
          page: UserProfileScreen,
        ),
        CustomRoute(
          transitionsBuilder: TransitionsBuilders.fadeIn,
          page: PostDetailScreen,
        )
      ],
    )
  ],
)
class $AppRouter {}
