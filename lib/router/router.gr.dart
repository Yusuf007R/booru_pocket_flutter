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

import '../blocs/gallery_grid_bloc/gallery_grid_bloc.dart' as _i10;
import '../screens/home_screen.dart' as _i2;
import '../screens/popular_screen.dart' as _i7;
import '../screens/post_detail_screen.dart' as _i4;
import '../screens/post_screen.dart' as _i6;
import 'route_wrappers/main_wrapper.dart' as _i1;
import 'route_wrappers/popular_route_wrapper.dart' as _i5;
import 'route_wrappers/post_route_wrapper.dart' as _i3;

class AppRouter extends _i8.RootStackRouter {
  AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    MainRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.MainWrapper());
    },
    HomeRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.HomeScreen());
    },
    PostRoute.name: (routeData) {
      final args =
          routeData.argsAs<PostRouteArgs>(orElse: () => const PostRouteArgs());
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i3.PostRouteWrapper(
              key: args.key, inputTextValue: args.inputTextValue));
    },
    PostDetailRoute.name: (routeData) {
      final args = routeData.argsAs<PostDetailRouteArgs>();
      return _i8.CustomPage<dynamic>(
          routeData: routeData,
          child: _i4.PostDetailScreen(
              key: args.key, initialIndex: args.initialIndex, bloc: args.bloc),
          transitionsBuilder: _i8.TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    PostRouteHomePage.name: (routeData) {
      final args = routeData.argsAs<PostRouteHomePageArgs>(
          orElse: () => const PostRouteHomePageArgs());
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i3.PostRouteWrapper(
              key: args.key, inputTextValue: args.inputTextValue));
    },
    PopularRouteHomePage.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.PopularRouteWrapper());
    },
    PostScreenHomePageInternal.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.PostScreen());
    },
    PopularScreenHomePageInternal.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.PopularScreen());
    },
    PostScreenInternal.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.PostScreen());
    }
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(MainRoute.name, path: '/', children: [
          _i8.RouteConfig(HomeRoute.name,
              path: '',
              parent: MainRoute.name,
              children: [
                _i8.RouteConfig(PostRouteHomePage.name,
                    path: '',
                    parent: HomeRoute.name,
                    children: [
                      _i8.RouteConfig(PostScreenHomePageInternal.name,
                          path: '', parent: PostRouteHomePage.name)
                    ]),
                _i8.RouteConfig(PopularRouteHomePage.name,
                    path: 'popular-route-wrapper',
                    parent: HomeRoute.name,
                    children: [
                      _i8.RouteConfig(PopularScreenHomePageInternal.name,
                          path: '', parent: PopularRouteHomePage.name)
                    ])
              ]),
          _i8.RouteConfig(PostRoute.name,
              path: 'post-route-wrapper',
              parent: MainRoute.name,
              children: [
                _i8.RouteConfig(PostScreenInternal.name,
                    path: '', parent: PostRoute.name)
              ]),
          _i8.RouteConfig(PostDetailRoute.name,
              path: 'post-detail-screen', parent: MainRoute.name)
        ])
      ];
}

/// generated route for
/// [_i1.MainWrapper]
class MainRoute extends _i8.PageRouteInfo<void> {
  const MainRoute({List<_i8.PageRouteInfo>? children})
      : super(MainRoute.name, path: '/', initialChildren: children);

  static const String name = 'MainRoute';
}

/// generated route for
/// [_i2.HomeScreen]
class HomeRoute extends _i8.PageRouteInfo<void> {
  const HomeRoute({List<_i8.PageRouteInfo>? children})
      : super(HomeRoute.name, path: '', initialChildren: children);

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i3.PostRouteWrapper]
class PostRoute extends _i8.PageRouteInfo<PostRouteArgs> {
  PostRoute(
      {_i9.Key? key,
      String inputTextValue = '',
      List<_i8.PageRouteInfo>? children})
      : super(PostRoute.name,
            path: 'post-route-wrapper',
            args: PostRouteArgs(key: key, inputTextValue: inputTextValue),
            initialChildren: children);

  static const String name = 'PostRoute';
}

class PostRouteArgs {
  const PostRouteArgs({this.key, this.inputTextValue = ''});

  final _i9.Key? key;

  final String inputTextValue;

  @override
  String toString() {
    return 'PostRouteArgs{key: $key, inputTextValue: $inputTextValue}';
  }
}

/// generated route for
/// [_i4.PostDetailScreen]
class PostDetailRoute extends _i8.PageRouteInfo<PostDetailRouteArgs> {
  PostDetailRoute(
      {_i9.Key? key,
      required int initialIndex,
      required _i10.GalleryGridBloc bloc})
      : super(PostDetailRoute.name,
            path: 'post-detail-screen',
            args: PostDetailRouteArgs(
                key: key, initialIndex: initialIndex, bloc: bloc));

  static const String name = 'PostDetailRoute';
}

class PostDetailRouteArgs {
  const PostDetailRouteArgs(
      {this.key, required this.initialIndex, required this.bloc});

  final _i9.Key? key;

  final int initialIndex;

  final _i10.GalleryGridBloc bloc;

  @override
  String toString() {
    return 'PostDetailRouteArgs{key: $key, initialIndex: $initialIndex, bloc: $bloc}';
  }
}

/// generated route for
/// [_i3.PostRouteWrapper]
class PostRouteHomePage extends _i8.PageRouteInfo<PostRouteHomePageArgs> {
  PostRouteHomePage(
      {_i9.Key? key,
      String inputTextValue = '',
      List<_i8.PageRouteInfo>? children})
      : super(PostRouteHomePage.name,
            path: '',
            args:
                PostRouteHomePageArgs(key: key, inputTextValue: inputTextValue),
            initialChildren: children);

  static const String name = 'PostRouteHomePage';
}

class PostRouteHomePageArgs {
  const PostRouteHomePageArgs({this.key, this.inputTextValue = ''});

  final _i9.Key? key;

  final String inputTextValue;

  @override
  String toString() {
    return 'PostRouteHomePageArgs{key: $key, inputTextValue: $inputTextValue}';
  }
}

/// generated route for
/// [_i5.PopularRouteWrapper]
class PopularRouteHomePage extends _i8.PageRouteInfo<void> {
  const PopularRouteHomePage({List<_i8.PageRouteInfo>? children})
      : super(PopularRouteHomePage.name,
            path: 'popular-route-wrapper', initialChildren: children);

  static const String name = 'PopularRouteHomePage';
}

/// generated route for
/// [_i6.PostScreen]
class PostScreenHomePageInternal extends _i8.PageRouteInfo<void> {
  const PostScreenHomePageInternal()
      : super(PostScreenHomePageInternal.name, path: '');

  static const String name = 'PostScreenHomePageInternal';
}

/// generated route for
/// [_i7.PopularScreen]
class PopularScreenHomePageInternal extends _i8.PageRouteInfo<void> {
  const PopularScreenHomePageInternal()
      : super(PopularScreenHomePageInternal.name, path: '');

  static const String name = 'PopularScreenHomePageInternal';
}

/// generated route for
/// [_i6.PostScreen]
class PostScreenInternal extends _i8.PageRouteInfo<void> {
  const PostScreenInternal() : super(PostScreenInternal.name, path: '');

  static const String name = 'PostScreenInternal';
}
