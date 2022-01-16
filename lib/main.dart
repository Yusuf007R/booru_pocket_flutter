import 'package:booru_pocket_flutter/router/router.gr.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

void main() {
  EquatableConfig.stringify = true;
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        colorScheme: const ColorScheme.highContrastDark(
          primary: Colors.purple,
          secondary: Colors.pink,
        ),
      ),
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
