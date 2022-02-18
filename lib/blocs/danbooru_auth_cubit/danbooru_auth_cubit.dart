import 'package:bloc/bloc.dart';
import 'package:booru_pocket_flutter/models/api/user/user.dart';
import 'package:booru_pocket_flutter/repositories/danbooru.dart';
import 'package:booru_pocket_flutter/services/locator_service.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:booru_pocket_flutter/router/router.gr.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

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
    } catch (e) {
      if (!isAuthLoad) {
        emit(
          state.copyWith(
              errorMsg: 'Invalid username or API key',
              user: const UserNoAuthenticated()),
        );
      }
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
    } else {
      final parts = auth.split(':');
      final username = parts[0];
      final apiKey = parts[1];
      setAuth(username, apiKey, isAuthLoad: true);
    }
  }

  void getFavorites() async {
    final user = state.user;
    if (user is UserAuthenticated) {
      final page = (user.favoriteCount / 1000).ceil();
      final favorites = await repository.getFavorites(user.name, page);
      setFavorites(favorites);
    }
  }

  void setFavorites(List<int> favorites) {
    favorites.sort(((a, b) => a.compareTo(b)));
    emit(state.copyWith(favoritePostIds: favorites));
  }
}
