// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:BooruPocket/blocs/gallery_grid_cubit/gallery_grid_cubit.dart'
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

/// generated route for
/// [_i1.HomeScreen]
class HomeRoute extends _i8.PageRouteInfo<void> {
  const HomeRoute({List<_i8.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i1.HomeScreen();
    },
  );
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

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i2.LoginScreen();
    },
  );
}

/// generated route for
/// [_i3.PostDetailScreen]
class PostDetailRoute extends _i8.PageRouteInfo<PostDetailRouteArgs> {
  PostDetailRoute({
    _i9.Key? key,
    required _i10.GalleryGridCubit galleryGridCubit,
    required int initialIndex,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          PostDetailRoute.name,
          args: PostDetailRouteArgs(
            key: key,
            galleryGridCubit: galleryGridCubit,
            initialIndex: initialIndex,
          ),
          initialChildren: children,
        );

  static const String name = 'PostDetailRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PostDetailRouteArgs>();
      return _i3.PostDetailScreen(
        key: args.key,
        galleryGridCubit: args.galleryGridCubit,
        initialIndex: args.initialIndex,
      );
    },
  );
}

class PostDetailRouteArgs {
  const PostDetailRouteArgs({
    this.key,
    required this.galleryGridCubit,
    required this.initialIndex,
  });

  final _i9.Key? key;

  final _i10.GalleryGridCubit galleryGridCubit;

  final int initialIndex;

  @override
  String toString() {
    return 'PostDetailRouteArgs{key: $key, galleryGridCubit: $galleryGridCubit, initialIndex: $initialIndex}';
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

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PostRouteWrapperArgs>(
          orElse: () => const PostRouteWrapperArgs());
      return _i4.PostRouteWrapper(
        key: args.key,
        inputTextValue: args.inputTextValue,
        postScreenType: args.postScreenType,
        strictTag: args.strictTag,
      );
    },
  );
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

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i5.PostScreen();
    },
  );
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

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i6.SettingsScreen();
    },
  );
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

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i7.UserProfileScreen();
    },
  );
}
