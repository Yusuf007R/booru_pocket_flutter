import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:booru_pocket_flutter/router/route_wrappers/main_wrapper.dart';
import 'package:booru_pocket_flutter/router/route_wrappers/post_route_wrapper.dart';
import 'package:booru_pocket_flutter/screens/home_screen.dart';
import 'package:booru_pocket_flutter/screens/post_detail_screen.dart';
import 'package:booru_pocket_flutter/screens/post_screen.dart';

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
          ],
        ),
        AutoRoute(
          page: PostRouteWrapper,
          name: 'PostRoute',
          children: [
            AutoRoute(
              initial: true,
              page: PostScreen,
              name: 'PostScreenInternal',
            )
          ],
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
