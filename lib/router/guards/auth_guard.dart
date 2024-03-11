import 'package:BooruPocket/blocs/danbooru_auth_cubit/danbooru_auth_cubit.dart';
import 'package:BooruPocket/models/api/user/user.dart';
import 'package:BooruPocket/router/router.gr.dart';
import 'package:BooruPocket/screens/post_screen.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(
    NavigationResolver resolver,
    StackRouter router,
  ) async {
    final context = router.navigatorKey.currentContext;

    if (context != null) {
      if (resolver.route.name == 'PostRoute') {
        if ([
          PostScreenType.gallery,
          PostScreenType.curated,
          PostScreenType.popular,
        ].any((element) => element == resolver.route.args.postScreenType)) {
          return resolver.next(true);
        }
      }
      final danbooruAuthCubit = context.read<DanbooruAuthCubit>();
      final user = danbooruAuthCubit.state.user;
      if (user is UserAuthenticated) return resolver.next(true);
      router.navigate(const LoginRoute());
    }
  }
}
