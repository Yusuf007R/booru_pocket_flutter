// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;

import '../blocs/gallery_grid_bloc/gallery_grid_bloc.dart' as _i11;
import '../screens/home_screen.dart' as _i1;
import '../screens/login_screen.dart' as _i3;
import '../screens/post_detail_screen.dart' as _i6;
import '../screens/post_screen.dart' as _i7;
import '../screens/settings_screen.dart' as _i4;
import '../screens/user_profile_screen.dart' as _i5;
import 'guards/auth_guard.dart' as _i10;
import 'route_wrappers/post_route_wrapper.dart' as _i2;

class AppRouter extends _i8.RootStackRouter {
  AppRouter(
      {_i9.GlobalKey<_i9.NavigatorState>? navigatorKey,
      required this.authGuard})
      : super(navigatorKey);

  final _i10.AuthGuard authGuard;

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomeScreen());
    },
    PostRoute.name: (routeData) {
      final args =
          routeData.argsAs<PostRouteArgs>(orElse: () => const PostRouteArgs());
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i2.PostRouteWrapper(
              key: args.key,
              inputTextValue: args.inputTextValue,
              postScreenType: args.postScreenType,
              strictTag: args.strictTag));
    },
    LoginRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.LoginScreen());
    },
    SettingsRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.SettingsScreen());
    },
    UserProfileRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.UserProfileScreen());
    },
    PostDetailRoute.name: (routeData) {
      final args = routeData.argsAs<PostDetailRouteArgs>();
      return _i8.CustomPage<dynamic>(
          routeData: routeData,
          child: _i6.PostDetailScreen(
              key: args.key,
              galleryGridBloc: args.galleryGridBloc,
              initialIndex: args.initialIndex),
          transitionsBuilder: _i8.TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    PostRouteHomePage.name: (routeData) {
      final args = routeData.argsAs<PostRouteHomePageArgs>(
          orElse: () => const PostRouteHomePageArgs());
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i2.PostRouteWrapper(
              key: args.key,
              inputTextValue: args.inputTextValue,
              postScreenType: args.postScreenType,
              strictTag: args.strictTag));
    },
    PostScreenHomePageInternal.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.PostScreen());
    },
    PostScreenPushed.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.PostScreen());
    }
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(HomeRoute.name, path: '/', children: [
          _i8.RouteConfig(PostRouteHomePage.name,
              path: '',
              parent: HomeRoute.name,
              children: [
                _i8.RouteConfig(PostScreenHomePageInternal.name,
                    path: '', parent: PostRouteHomePage.name)
              ])
        ]),
        _i8.RouteConfig(PostRoute.name, path: '/post-route-wrapper', guards: [
          authGuard
        ], children: [
          _i8.RouteConfig(PostScreenPushed.name,
              path: '', parent: PostRoute.name)
        ]),
        _i8.RouteConfig(LoginRoute.name, path: '/login-screen'),
        _i8.RouteConfig(SettingsRoute.name, path: '/settings-screen'),
        _i8.RouteConfig(UserProfileRoute.name,
            path: '/user-profile-screen', guards: [authGuard]),
        _i8.RouteConfig(PostDetailRoute.name, path: '/post-detail-screen')
      ];
}

/// generated route for
/// [_i1.HomeScreen]
class HomeRoute extends _i8.PageRouteInfo<void> {
  const HomeRoute({List<_i8.PageRouteInfo>? children})
      : super(HomeRoute.name, path: '/', initialChildren: children);

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.PostRouteWrapper]
class PostRoute extends _i8.PageRouteInfo<PostRouteArgs> {
  PostRoute(
      {_i9.Key? key,
      String inputTextValue = '',
      _i7.PostScreenType postScreenType = _i7.PostScreenType.gallery,
      String strictTag = '',
      List<_i8.PageRouteInfo>? children})
      : super(PostRoute.name,
            path: '/post-route-wrapper',
            args: PostRouteArgs(
                key: key,
                inputTextValue: inputTextValue,
                postScreenType: postScreenType,
                strictTag: strictTag),
            initialChildren: children);

  static const String name = 'PostRoute';
}

class PostRouteArgs {
  const PostRouteArgs(
      {this.key,
      this.inputTextValue = '',
      this.postScreenType = _i7.PostScreenType.gallery,
      this.strictTag = ''});

  final _i9.Key? key;

  final String inputTextValue;

  final _i7.PostScreenType postScreenType;

  final String strictTag;

  @override
  String toString() {
    return 'PostRouteArgs{key: $key, inputTextValue: $inputTextValue, postScreenType: $postScreenType, strictTag: $strictTag}';
  }
}

/// generated route for
/// [_i3.LoginScreen]
class LoginRoute extends _i8.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: '/login-screen');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i4.SettingsScreen]
class SettingsRoute extends _i8.PageRouteInfo<void> {
  const SettingsRoute() : super(SettingsRoute.name, path: '/settings-screen');

  static const String name = 'SettingsRoute';
}

/// generated route for
/// [_i5.UserProfileScreen]
class UserProfileRoute extends _i8.PageRouteInfo<void> {
  const UserProfileRoute()
      : super(UserProfileRoute.name, path: '/user-profile-screen');

  static const String name = 'UserProfileRoute';
}

/// generated route for
/// [_i6.PostDetailScreen]
class PostDetailRoute extends _i8.PageRouteInfo<PostDetailRouteArgs> {
  PostDetailRoute(
      {_i9.Key? key,
      required _i11.GalleryGridBloc galleryGridBloc,
      required int initialIndex})
      : super(PostDetailRoute.name,
            path: '/post-detail-screen',
            args: PostDetailRouteArgs(
                key: key,
                galleryGridBloc: galleryGridBloc,
                initialIndex: initialIndex));

  static const String name = 'PostDetailRoute';
}

class PostDetailRouteArgs {
  const PostDetailRouteArgs(
      {this.key, required this.galleryGridBloc, required this.initialIndex});

  final _i9.Key? key;

  final _i11.GalleryGridBloc galleryGridBloc;

  final int initialIndex;

  @override
  String toString() {
    return 'PostDetailRouteArgs{key: $key, galleryGridBloc: $galleryGridBloc, initialIndex: $initialIndex}';
  }
}

/// generated route for
/// [_i2.PostRouteWrapper]
class PostRouteHomePage extends _i8.PageRouteInfo<PostRouteHomePageArgs> {
  PostRouteHomePage(
      {_i9.Key? key,
      String inputTextValue = '',
      _i7.PostScreenType postScreenType = _i7.PostScreenType.gallery,
      String strictTag = '',
      List<_i8.PageRouteInfo>? children})
      : super(PostRouteHomePage.name,
            path: '',
            args: PostRouteHomePageArgs(
                key: key,
                inputTextValue: inputTextValue,
                postScreenType: postScreenType,
                strictTag: strictTag),
            initialChildren: children);

  static const String name = 'PostRouteHomePage';
}

class PostRouteHomePageArgs {
  const PostRouteHomePageArgs(
      {this.key,
      this.inputTextValue = '',
      this.postScreenType = _i7.PostScreenType.gallery,
      this.strictTag = ''});

  final _i9.Key? key;

  final String inputTextValue;

  final _i7.PostScreenType postScreenType;

  final String strictTag;

  @override
  String toString() {
    return 'PostRouteHomePageArgs{key: $key, inputTextValue: $inputTextValue, postScreenType: $postScreenType, strictTag: $strictTag}';
  }
}

/// generated route for
/// [_i7.PostScreen]
class PostScreenHomePageInternal extends _i8.PageRouteInfo<void> {
  const PostScreenHomePageInternal()
      : super(PostScreenHomePageInternal.name, path: '');

  static const String name = 'PostScreenHomePageInternal';
}

/// generated route for
/// [_i7.PostScreen]
class PostScreenPushed extends _i8.PageRouteInfo<void> {
  const PostScreenPushed() : super(PostScreenPushed.name, path: '');

  static const String name = 'PostScreenPushed';
}
