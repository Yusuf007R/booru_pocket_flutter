// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i10;
import 'package:flutter/material.dart' as _i11;

import '../blocs/gallery_grid_bloc/gallery_grid_bloc.dart' as _i13;
import '../screens/home_screen.dart' as _i2;
import '../screens/login_screen.dart' as _i4;
import '../screens/popular_screen.dart' as _i9;
import '../screens/post_detail_screen.dart' as _i6;
import '../screens/post_screen.dart' as _i8;
import '../screens/user_profile_screen.dart' as _i5;
import 'guards/auth_guard.dart' as _i12;
import 'route_wrappers/main_wrapper.dart' as _i1;
import 'route_wrappers/popular_route_wrapper.dart' as _i7;
import 'route_wrappers/post_route_wrapper.dart' as _i3;

class AppRouter extends _i10.RootStackRouter {
  AppRouter(
      {_i11.GlobalKey<_i11.NavigatorState>? navigatorKey,
      required this.authGuard})
      : super(navigatorKey);

  final _i12.AuthGuard authGuard;

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    MainRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.MainWrapper());
    },
    HomeRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.HomeScreen());
    },
    PostRoute.name: (routeData) {
      final args =
          routeData.argsAs<PostRouteArgs>(orElse: () => const PostRouteArgs());
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i3.PostRouteWrapper(
              key: args.key,
              inputTextValue: args.inputTextValue,
              postScreenType: args.postScreenType));
    },
    LoginRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.LoginScreen());
    },
    UserProfileRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.UserProfileScreen());
    },
    PostDetailRoute.name: (routeData) {
      final args = routeData.argsAs<PostDetailRouteArgs>();
      return _i10.CustomPage<dynamic>(
          routeData: routeData,
          child: _i6.PostDetailScreen(
              key: args.key,
              galleryGridBloc: args.galleryGridBloc,
              initialIndex: args.initialIndex),
          transitionsBuilder: _i10.TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    PostRouteHomePage.name: (routeData) {
      final args = routeData.argsAs<PostRouteHomePageArgs>(
          orElse: () => const PostRouteHomePageArgs());
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i3.PostRouteWrapper(
              key: args.key,
              inputTextValue: args.inputTextValue,
              postScreenType: args.postScreenType));
    },
    PopularRouteHomePage.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.PopularRouteWrapper());
    },
    PostScreenHomePageInternal.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.PostScreen());
    },
    PopularScreenHomePageInternal.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.PopularScreen());
    },
    PostScreenPushed.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.PostScreen());
    }
  };

  @override
  List<_i10.RouteConfig> get routes => [
        _i10.RouteConfig(MainRoute.name, path: '/', children: [
          _i10.RouteConfig(HomeRoute.name,
              path: '',
              parent: MainRoute.name,
              children: [
                _i10.RouteConfig(PostRouteHomePage.name,
                    path: '',
                    parent: HomeRoute.name,
                    children: [
                      _i10.RouteConfig(PostScreenHomePageInternal.name,
                          path: '', parent: PostRouteHomePage.name)
                    ]),
                _i10.RouteConfig(PopularRouteHomePage.name,
                    path: 'popular-route-wrapper',
                    parent: HomeRoute.name,
                    children: [
                      _i10.RouteConfig(PopularScreenHomePageInternal.name,
                          path: '', parent: PopularRouteHomePage.name)
                    ])
              ]),
          _i10.RouteConfig(PostRoute.name,
              path: 'post-route-wrapper',
              parent: MainRoute.name,
              guards: [
                authGuard
              ],
              children: [
                _i10.RouteConfig(PostScreenPushed.name,
                    path: '', parent: PostRoute.name)
              ]),
          _i10.RouteConfig(LoginRoute.name,
              path: 'login-screen', parent: MainRoute.name),
          _i10.RouteConfig(UserProfileRoute.name,
              path: 'user-profile-screen',
              parent: MainRoute.name,
              guards: [authGuard]),
          _i10.RouteConfig(PostDetailRoute.name,
              path: 'post-detail-screen', parent: MainRoute.name)
        ])
      ];
}

/// generated route for
/// [_i1.MainWrapper]
class MainRoute extends _i10.PageRouteInfo<void> {
  const MainRoute({List<_i10.PageRouteInfo>? children})
      : super(MainRoute.name, path: '/', initialChildren: children);

  static const String name = 'MainRoute';
}

/// generated route for
/// [_i2.HomeScreen]
class HomeRoute extends _i10.PageRouteInfo<void> {
  const HomeRoute({List<_i10.PageRouteInfo>? children})
      : super(HomeRoute.name, path: '', initialChildren: children);

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i3.PostRouteWrapper]
class PostRoute extends _i10.PageRouteInfo<PostRouteArgs> {
  PostRoute(
      {_i11.Key? key,
      String inputTextValue = '',
      _i8.PostScreenType postScreenType = _i8.PostScreenType.gallery,
      List<_i10.PageRouteInfo>? children})
      : super(PostRoute.name,
            path: 'post-route-wrapper',
            args: PostRouteArgs(
                key: key,
                inputTextValue: inputTextValue,
                postScreenType: postScreenType),
            initialChildren: children);

  static const String name = 'PostRoute';
}

class PostRouteArgs {
  const PostRouteArgs(
      {this.key,
      this.inputTextValue = '',
      this.postScreenType = _i8.PostScreenType.gallery});

  final _i11.Key? key;

  final String inputTextValue;

  final _i8.PostScreenType postScreenType;

  @override
  String toString() {
    return 'PostRouteArgs{key: $key, inputTextValue: $inputTextValue, postScreenType: $postScreenType}';
  }
}

/// generated route for
/// [_i4.LoginScreen]
class LoginRoute extends _i10.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: 'login-screen');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i5.UserProfileScreen]
class UserProfileRoute extends _i10.PageRouteInfo<void> {
  const UserProfileRoute()
      : super(UserProfileRoute.name, path: 'user-profile-screen');

  static const String name = 'UserProfileRoute';
}

/// generated route for
/// [_i6.PostDetailScreen]
class PostDetailRoute extends _i10.PageRouteInfo<PostDetailRouteArgs> {
  PostDetailRoute(
      {_i11.Key? key,
      required _i13.GalleryGridBloc galleryGridBloc,
      required int initialIndex})
      : super(PostDetailRoute.name,
            path: 'post-detail-screen',
            args: PostDetailRouteArgs(
                key: key,
                galleryGridBloc: galleryGridBloc,
                initialIndex: initialIndex));

  static const String name = 'PostDetailRoute';
}

class PostDetailRouteArgs {
  const PostDetailRouteArgs(
      {this.key, required this.galleryGridBloc, required this.initialIndex});

  final _i11.Key? key;

  final _i13.GalleryGridBloc galleryGridBloc;

  final int initialIndex;

  @override
  String toString() {
    return 'PostDetailRouteArgs{key: $key, galleryGridBloc: $galleryGridBloc, initialIndex: $initialIndex}';
  }
}

/// generated route for
/// [_i3.PostRouteWrapper]
class PostRouteHomePage extends _i10.PageRouteInfo<PostRouteHomePageArgs> {
  PostRouteHomePage(
      {_i11.Key? key,
      String inputTextValue = '',
      _i8.PostScreenType postScreenType = _i8.PostScreenType.gallery,
      List<_i10.PageRouteInfo>? children})
      : super(PostRouteHomePage.name,
            path: '',
            args: PostRouteHomePageArgs(
                key: key,
                inputTextValue: inputTextValue,
                postScreenType: postScreenType),
            initialChildren: children);

  static const String name = 'PostRouteHomePage';
}

class PostRouteHomePageArgs {
  const PostRouteHomePageArgs(
      {this.key,
      this.inputTextValue = '',
      this.postScreenType = _i8.PostScreenType.gallery});

  final _i11.Key? key;

  final String inputTextValue;

  final _i8.PostScreenType postScreenType;

  @override
  String toString() {
    return 'PostRouteHomePageArgs{key: $key, inputTextValue: $inputTextValue, postScreenType: $postScreenType}';
  }
}

/// generated route for
/// [_i7.PopularRouteWrapper]
class PopularRouteHomePage extends _i10.PageRouteInfo<void> {
  const PopularRouteHomePage({List<_i10.PageRouteInfo>? children})
      : super(PopularRouteHomePage.name,
            path: 'popular-route-wrapper', initialChildren: children);

  static const String name = 'PopularRouteHomePage';
}

/// generated route for
/// [_i8.PostScreen]
class PostScreenHomePageInternal extends _i10.PageRouteInfo<void> {
  const PostScreenHomePageInternal()
      : super(PostScreenHomePageInternal.name, path: '');

  static const String name = 'PostScreenHomePageInternal';
}

/// generated route for
/// [_i9.PopularScreen]
class PopularScreenHomePageInternal extends _i10.PageRouteInfo<void> {
  const PopularScreenHomePageInternal()
      : super(PopularScreenHomePageInternal.name, path: '');

  static const String name = 'PopularScreenHomePageInternal';
}

/// generated route for
/// [_i8.PostScreen]
class PostScreenPushed extends _i10.PageRouteInfo<void> {
  const PostScreenPushed() : super(PostScreenPushed.name, path: '');

  static const String name = 'PostScreenPushed';
}
