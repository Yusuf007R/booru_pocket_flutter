import 'package:BooruPocket/blocs/danbooru_auth_cubit/danbooru_auth_cubit.dart';
import 'package:BooruPocket/blocs/settings_cubit/settings_cubit.dart';
import 'package:BooruPocket/environment/environment.dart';
import 'package:BooruPocket/router/router.dart';
import 'package:BooruPocket/services/app_context_service.dart';
import 'package:BooruPocket/services/locator_service.dart';
import 'package:BooruPocket/services/system_ui_service.dart';
import 'package:BooruPocket/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

void main() async {
  await setupLocator();

  WidgetsFlutterBinding.ensureInitialized();

  PackageInfo packageInfo = await PackageInfo.fromPlatform();
  SystemUiService.initDefaultSystemUI();
  SentryFlutter.init(
    (options) => options
      ..dsn = Environments.sentryDsn
      ..release = "${packageInfo.version}+${packageInfo.buildNumber}"
      ..environment = Environments.stageEnum.name,
    appRunner: () async {
      HydratedBloc.storage = await HydratedStorage.build(
        storageDirectory: await getApplicationDocumentsDirectory(),
      );
      return runApp(const MyApp());
    },
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final router = locator<AppRouter>();
  final settingsCubit = SettingsCubit();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => DanbooruAuthCubit()..loadAuth(),
          lazy: false,
        ),
        BlocProvider(
          create: (context) => settingsCubit,
        ),
      ],
      child: ListenableProvider(
        create: (context) => ValueNotifier(true),
        child: BlocBuilder<SettingsCubit, SettingsState>(
          builder: (context, settingsState) {
            return MaterialApp.router(
              theme: lightThemeData,
              darkTheme: darkThemeData,
              themeMode: settingsState.themeMode,
              routerConfig: router.config(
                navigatorObservers: () => [SentryNavigatorObserver()],
              ),
            );
          },
        ),
      ),
    );
  }

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final context = router.navigatorKey.currentState?.context;
      if (context != null) {
        locator<AppContextService>().setContext(context);
      }
    });

    super.initState();
  }
}
