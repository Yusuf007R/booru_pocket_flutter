import 'package:BooruPocket/blocs/danbooru_auth_cubit/danbooru_auth_cubit.dart';
import 'package:BooruPocket/blocs/settings_cubit/settings_cubit.dart';
import 'package:flutter/material.dart';

class AppContextService {
  BuildContext? _context;
  DanbooruAuthCubit? _danbooruAuthCubit;
  SettingsCubit? _settingsCubit;

  BuildContext? get context => _context;

  DanbooruAuthCubit? get danbooruAuthCubit => _danbooruAuthCubit;

  SettingsCubit? get settingsCubit => _settingsCubit;

  void setContext(BuildContext c) => _context = c;

  void setDanbooruAuthCubit(DanbooruAuthCubit c) => _danbooruAuthCubit = c;

  void setSettingsCubit(SettingsCubit c) => _settingsCubit = c;
}
