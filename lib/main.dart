import 'package:BooruPocket/blocs/danbooru_auth_cubit/danbooru_auth_cubit.dart';
import 'package:BooruPocket/blocs/settings_cubit/settings_cubit.dart';
import 'package:BooruPocket/models/api/user/user.dart';

import 'package:BooruPocket/router/router.gr.dart';
import 'package:BooruPocket/services/context_service.dart';
import 'package:BooruPocket/services/locator_service.dart';
import 'package:BooruPocket/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';

void main() async {
  setupLocator();

  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.transparent,
  ));
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge,
      overlays: [SystemUiOverlay.top]);

  final storage = await HydratedStorage.build(
    storageDirectory: await getTemporaryDirectory(),
  );
  HydratedBlocOverrides.runZoned(
    () => runApp(const MyApp()),
    storage: storage,
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final router = locator<AppRouter>();
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final context = router.navigatorKey.currentState?.context;
      if (context != null) {
        locator<ContextService>().setContext(context);
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => DanbooruAuthCubit()..loadAuth(),
          lazy: false,
        ),
        BlocProvider(
          create: (context) => SettingsCubit(),
        ),
      ],
      child: ListenableProvider(
        create: (context) => ValueNotifier(true),
        child: Builder(
          builder: (context) =>
              BlocListener<DanbooruAuthCubit, DanbooruAuthState>(
            listenWhen: (previous, current) => previous.user != current.user,
            listener: (context, state) {
              final user = state.user;
              if (state.favoritePostIds.isEmpty && user is UserAuthenticated) {
                context.read<DanbooruAuthCubit>().getFavorites();
              }
            },
            child: BlocBuilder<SettingsCubit, SettingsState>(
              builder: (context, settingsState) {
                return MaterialApp.router(
                  theme: lightThemeData,
                  darkTheme: darkThemeData,
                  themeMode: settingsState.themeMode,
                  routerDelegate: router.delegate(),
                  routeInformationParser: router.defaultRouteParser(),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
