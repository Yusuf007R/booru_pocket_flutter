import 'package:auto_route/auto_route.dart';
import 'package:BooruPocket/router/guards/auth_guard.dart';
import 'package:BooruPocket/router/route_wrappers/post_route_wrapper.dart';
import 'package:BooruPocket/screens/home_screen.dart';
import 'package:BooruPocket/screens/login_screen.dart';
import 'package:BooruPocket/screens/post_detail_screen.dart';
import 'package:BooruPocket/screens/post_screen.dart';
import 'package:BooruPocket/screens/settings_screen.dart';
import 'package:BooruPocket/screens/user_profile_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
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
      page: SettingsScreen,
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
class $AppRouter {}
