import 'package:BooruPocket/utils/sentry_utils.dart';
import 'package:bloc/bloc.dart';
import 'package:BooruPocket/models/api/post/post.dart';
import 'package:BooruPocket/models/api/user/user.dart';
import 'package:BooruPocket/repositories/danbooru.dart';
import 'package:BooruPocket/services/locator_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:BooruPocket/router/router.gr.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

part 'danbooru_auth_state.dart';
part 'danbooru_auth_cubit.freezed.dart';

class DanbooruAuthCubit extends Cubit<DanbooruAuthState> {
  final DanbooruRepository repository = locator<DanbooruRepository>();
  final storage = const FlutterSecureStorage();

  DanbooruAuthCubit() : super(const DanbooruAuthState());

  void setAuth(String username, String apiKey,
      {bool isAuthLoad = false}) async {
    emit(state.copyWith(
      errorMsg: '',
      usernameErrorMsg: null,
      apiKeyErrorMsg: null,
      user: const User.authenticating(),
    ));
    if (username.isEmpty) {
      emit(state.copyWith(usernameErrorMsg: 'Username cannot be empty'));
    }
    if (apiKey.isEmpty) {
      emit(state.copyWith(apiKeyErrorMsg: 'API Key cannot be empty'));
    }
    if (state.apiKeyErrorMsg != null || state.usernameErrorMsg != null) {
      return;
    }

    try {
      final user = await repository.setBasicAuthHeader(username, apiKey);
      emit(state.copyWith(user: user));
      await storage.write(key: 'auth', value: '$username:$apiKey');
      if (!isAuthLoad) {
        locator<AppRouter>().replace(const UserProfileRoute());
      }
    } catch (error, stackTrace) {
      reportException("Error while authenticating",
          originalError: error, stackTrace: stackTrace);

      emit(
        state.copyWith(
            errorMsg: 'Invalid username or API key',
            user: const UserNoAuthenticated()),
      );
      storage.delete(key: 'auth');
    }
  }

  void logout() async {
    emit(const DanbooruAuthState(user: User.noAuthenticated()));
    await storage.delete(key: 'auth');
  }

  void refreshUser() async {
    final user = await repository.getUserProfile();
    emit(state.copyWith(user: user));
  }

  void loadAuth() async {
    final auth = await storage.read(key: 'auth');
    if (auth == null) {
      emit(state.copyWith(user: const UserNoAuthenticated()));
      repository.setUserAgent(userAgentHeader());
    } else {
      final parts = auth.split(':');
      final username = parts[0];
      final apiKey = parts[1];
      repository.setUserAgent(userAgentHeader(username: username));
      setAuth(username, apiKey, isAuthLoad: true);
    }
  }

  void getFavorites({User? customUser}) async {
    final user = customUser ?? state.user;
    if (user is UserAuthenticated) {
      final page = (user.favoriteCount / 1000).ceil();
      final favorites = await repository.getFavorites(user.name, page);
      emit(state.copyWith(favoritePostIds: favorites));
    }
  }

  bool isPostFavorite(Post post) => state.favoritePostIds[post.id] ?? false;

  void setFavoriteOn(Post post) async {
    final copyMap = {...state.favoritePostIds};
    try {
      copyMap.addEntries({post.id: true}.entries);
      emit(state.copyWith(favoritePostIds: copyMap));
      await repository.addFavorite(post.id);
      return;
    } on DioError catch (error, stackTrace) {
      reportException("Couldn't change favorite status",
          originalError: error,
          stackTrace: stackTrace,
          extras: {
            "post-id": post.id.toString(),
            "response": error.response?.data['message'] ?? "Unknown",
            "type": "on"
          });

      copyMap.remove(post.id);
      emit(state.copyWith(favoritePostIds: copyMap));
      return;
    }
  }

  void setFavoriteOff(Post post) async {
    final copyMap = {...state.favoritePostIds};
    try {
      copyMap.remove(post.id);
      emit(state.copyWith(favoritePostIds: copyMap));
      await repository.deleteFavorite(post.id);
      return;
    } on DioError catch (error, stackTrace) {
      reportException("Couldn't change favorite status",
          originalError: error,
          stackTrace: stackTrace,
          extras: {
            "post-id": post.id.toString(),
            "response": error.response?.data['message'] ?? "Unknown",
            "type": "off"
          });
      if (error.response?.data['message'] == 'That record was not found.') {
        return;
      }
      copyMap.addEntries({post.id: true}.entries);
      emit(state.copyWith(favoritePostIds: copyMap));
      return;
    }
  }

  void toggleFavoritePost(Post post) async {
    final user = state.user;
    if (user is! UserAuthenticated) {
      locator<AppRouter>().navigate(const LoginRoute());
      return;
    }

    final isFav = isPostFavorite(post);
    if (isFav) return setFavoriteOff(post);
    setFavoriteOn(post);
  }

  String userAgentHeader({String? username}) {
    final user = state.user;
    if (user is UserAuthenticated) return 'Danbooru user ${user.name}';
    return 'Danbooru user ${username ?? 'unknown'}';
  }

  @override
  void onChange(Change<DanbooruAuthState> change) {
    super.onChange(change);
    if (change.currentState.user == change.nextState.user) return;
    final user = change.nextState.user;
    if (state.favoritePostIds.isEmpty && user is UserAuthenticated) {
      getFavorites(customUser: user);
    }
  }
}
