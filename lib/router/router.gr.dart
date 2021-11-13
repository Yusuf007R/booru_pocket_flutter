// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../blocs/gallery_grid_bloc/gallery_grid_bloc.dart' as _i8;
import '../screens/home_screen.dart' as _i2;
import '../screens/post_detail_screen.dart' as _i4;
import '../screens/post_screen.dart' as _i5;
import 'route_wrappers/main_wrapper.dart' as _i1;
import 'route_wrappers/post_route_wrapper.dart' as _i3;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    MainRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.MainWrapper());
    },
    HomeRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.HomeScreen());
    },
    PostRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.PostRouteWrapper());
    },
    PostDetailRoute.name: (routeData) {
      final args = routeData.argsAs<PostDetailRouteArgs>();
      return _i6.CustomPage<dynamic>(
          routeData: routeData,
          child: _i4.PostDetailScreen(key: args.key, bloc: args.bloc),
          transitionsBuilder: _i6.TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    PostRouteHomePage.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.PostRouteWrapper());
    },
    PostScreenHomePageInternal.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.PostScreen());
    },
    PostScreenInternal.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.PostScreen());
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(MainRoute.name, path: '/', children: [
          _i6.RouteConfig(HomeRoute.name,
              path: '',
              parent: MainRoute.name,
              children: [
                _i6.RouteConfig(PostRouteHomePage.name,
                    path: '',
                    parent: HomeRoute.name,
                    children: [
                      _i6.RouteConfig(PostScreenHomePageInternal.name,
                          path: '', parent: PostRouteHomePage.name)
                    ])
              ]),
          _i6.RouteConfig(PostRoute.name,
              path: 'post-route-wrapper',
              parent: MainRoute.name,
              children: [
                _i6.RouteConfig(PostScreenInternal.name,
                    path: '', parent: PostRoute.name)
              ]),
          _i6.RouteConfig(PostDetailRoute.name,
              path: 'post-detail-screen', parent: MainRoute.name)
        ])
      ];
}

/// generated route for [_i1.MainWrapper]
class MainRoute extends _i6.PageRouteInfo<void> {
  const MainRoute({List<_i6.PageRouteInfo>? children})
      : super(name, path: '/', initialChildren: children);

  static const String name = 'MainRoute';
}

/// generated route for [_i2.HomeScreen]
class HomeRoute extends _i6.PageRouteInfo<void> {
  const HomeRoute({List<_i6.PageRouteInfo>? children})
      : super(name, path: '', initialChildren: children);

  static const String name = 'HomeRoute';
}

/// generated route for [_i3.PostRouteWrapper]
class PostRoute extends _i6.PageRouteInfo<void> {
  const PostRoute({List<_i6.PageRouteInfo>? children})
      : super(name, path: 'post-route-wrapper', initialChildren: children);

  static const String name = 'PostRoute';
}

/// generated route for [_i4.PostDetailScreen]
class PostDetailRoute extends _i6.PageRouteInfo<PostDetailRouteArgs> {
  PostDetailRoute({_i7.Key? key, required _i8.GalleryGridBloc bloc})
      : super(name,
            path: 'post-detail-screen',
            args: PostDetailRouteArgs(key: key, bloc: bloc));

  static const String name = 'PostDetailRoute';
}

class PostDetailRouteArgs {
  const PostDetailRouteArgs({this.key, required this.bloc});

  final _i7.Key? key;

  final _i8.GalleryGridBloc bloc;
}

/// generated route for [_i3.PostRouteWrapper]
class PostRouteHomePage extends _i6.PageRouteInfo<void> {
  const PostRouteHomePage({List<_i6.PageRouteInfo>? children})
      : super(name, path: '', initialChildren: children);

  static const String name = 'PostRouteHomePage';
}

/// generated route for [_i5.PostScreen]
class PostScreenHomePageInternal extends _i6.PageRouteInfo<void> {
  const PostScreenHomePageInternal() : super(name, path: '');

  static const String name = 'PostScreenHomePageInternal';
}

/// generated route for [_i5.PostScreen]
class PostScreenInternal extends _i6.PageRouteInfo<void> {
  const PostScreenInternal() : super(name, path: '');

  static const String name = 'PostScreenInternal';
}
