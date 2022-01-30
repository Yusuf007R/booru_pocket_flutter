import 'package:booru_pocket_flutter/blocs/danbooru_auth_cubit/danbooru_auth_cubit.dart';

import 'package:booru_pocket_flutter/router/router.gr.dart';
import 'package:booru_pocket_flutter/services/locator_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  setupLocator();
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final router = locator<AppRouter>();
    return BlocProvider(
      lazy: false,
      create: (context) => DanbooruAuthCubit()..loadAuth(),
      child: MaterialApp.router(
        theme: ThemeData(
          primaryColor: Colors.purple.shade500,
          colorScheme: ColorScheme.dark(
            primary: Colors.purple.shade500,
            secondary: Colors.pink,
          ),
        ),
        routerDelegate: router.delegate(),
        routeInformationParser: router.defaultRouteParser(),
      ),
    );
  }
}
