import 'package:auto_route/auto_route.dart';
import 'package:booru_pocket_flutter/repositories/danbooru.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainWrapper extends StatelessWidget {
  const MainWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HeroControllerScope(
      controller: HeroController(),
      child: RepositoryProvider(
        create: (context) => DanbooruRepository(),
        child: const AutoRouter(),
      ),
    );
  }
}
