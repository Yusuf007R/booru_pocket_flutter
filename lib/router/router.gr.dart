// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:BooruPocket/blocs/gallery_grid_bloc/gallery_grid_bloc.dart'
    as _i10;
import 'package:BooruPocket/router/route_wrappers/post_route_wrapper.dart'
    as _i4;
import 'package:BooruPocket/screens/home_screen.dart' as _i1;
import 'package:BooruPocket/screens/login_screen.dart' as _i2;
import 'package:BooruPocket/screens/post_detail_screen.dart' as _i3;
import 'package:BooruPocket/screens/post_screen.dart' as _i5;
import 'package:BooruPocket/screens/settings_screen.dart' as _i6;
import 'package:BooruPocket/screens/user_profile_screen.dart' as _i7;
import 'package:flutter/material.dart' as _i9;

abstract class $AppRouter extends _i8.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomeScreen(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.LoginScreen(),
      );
    },
    PostDetailRoute.name: (routeData) {
      final args = routeData.argsAs<PostDetailRouteArgs>();
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.PostDetailScreen(
          key: args.key,
          galleryGridBloc: args.galleryGridBloc,
          initialIndex: args.initialIndex,
        ),
      );
    },
    PostRouteWrapper.name: (routeData) {
      final args = routeData.argsAs<PostRouteWrapperArgs>(
          orElse: () => const PostRouteWrapperArgs());
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.PostRouteWrapper(
          key: args.key,
          inputTextValue: args.inputTextValue,
          postScreenType: args.postScreenType,
          strictTag: args.strictTag,
        ),
      );
    },
    PostRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.PostScreen(),
      );
    },
    SettingsRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.SettingsScreen(),
      );
    },
    UserProfileRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.UserProfileScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.HomeScreen]
class HomeRoute extends _i8.PageRouteInfo<void> {
  const HomeRoute({List<_i8.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i2.LoginScreen]
class LoginRoute extends _i8.PageRouteInfo<void> {
  const LoginRoute({List<_i8.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i3.PostDetailScreen]
class PostDetailRoute extends _i8.PageRouteInfo<PostDetailRouteArgs> {
  PostDetailRoute({
    _i9.Key? key,
    required _i10.GalleryGridBloc galleryGridBloc,
    required int initialIndex,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          PostDetailRoute.name,
          args: PostDetailRouteArgs(
            key: key,
            galleryGridBloc: galleryGridBloc,
            initialIndex: initialIndex,
          ),
          initialChildren: children,
        );

  static const String name = 'PostDetailRoute';

  static const _i8.PageInfo<PostDetailRouteArgs> page =
      _i8.PageInfo<PostDetailRouteArgs>(name);
}

class PostDetailRouteArgs {
  const PostDetailRouteArgs({
    this.key,
    required this.galleryGridBloc,
    required this.initialIndex,
  });

  final _i9.Key? key;

  final _i10.GalleryGridBloc galleryGridBloc;

  final int initialIndex;

  @override
  String toString() {
    return 'PostDetailRouteArgs{key: $key, galleryGridBloc: $galleryGridBloc, initialIndex: $initialIndex}';
  }
}

/// generated route for
/// [_i4.PostRouteWrapper]
class PostRouteWrapper extends _i8.PageRouteInfo<PostRouteWrapperArgs> {
  PostRouteWrapper({
    _i9.Key? key,
    String inputTextValue = '',
    _i5.PostScreenType postScreenType = _i5.PostScreenType.gallery,
    String strictTag = '',
    List<_i8.PageRouteInfo>? children,
  }) : super(
          PostRouteWrapper.name,
          args: PostRouteWrapperArgs(
            key: key,
            inputTextValue: inputTextValue,
            postScreenType: postScreenType,
            strictTag: strictTag,
          ),
          initialChildren: children,
        );

  static const String name = 'PostRouteWrapper';

  static const _i8.PageInfo<PostRouteWrapperArgs> page =
      _i8.PageInfo<PostRouteWrapperArgs>(name);
}

class PostRouteWrapperArgs {
  const PostRouteWrapperArgs({
    this.key,
    this.inputTextValue = '',
    this.postScreenType = _i5.PostScreenType.gallery,
    this.strictTag = '',
  });

  final _i9.Key? key;

  final String inputTextValue;

  final _i5.PostScreenType postScreenType;

  final String strictTag;

  @override
  String toString() {
    return 'PostRouteWrapperArgs{key: $key, inputTextValue: $inputTextValue, postScreenType: $postScreenType, strictTag: $strictTag}';
  }
}

/// generated route for
/// [_i5.PostScreen]
class PostRoute extends _i8.PageRouteInfo<void> {
  const PostRoute({List<_i8.PageRouteInfo>? children})
      : super(
          PostRoute.name,
          initialChildren: children,
        );

  static const String name = 'PostRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i6.SettingsScreen]
class SettingsRoute extends _i8.PageRouteInfo<void> {
  const SettingsRoute({List<_i8.PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i7.UserProfileScreen]
class UserProfileRoute extends _i8.PageRouteInfo<void> {
  const UserProfileRoute({List<_i8.PageRouteInfo>? children})
      : super(
          UserProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserProfileRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}
