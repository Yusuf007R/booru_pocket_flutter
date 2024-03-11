import 'dart:math';

import 'package:BooruPocket/blocs/danbooru_auth_cubit/danbooru_auth_cubit.dart';
import 'package:BooruPocket/models/api/user/user.dart';
import 'package:BooruPocket/router/router.gr.dart';
import 'package:BooruPocket/screens/post_screen.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TextIconButton extends StatelessWidget {
  final IconData icon;

  final String text;
  final Function() onPressed;
  const TextIconButton({
    super.key,
    required this.icon,
    required this.text,
    required this.onPressed,
  });
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onPressed,
        child: Column(
          children: [
            Icon(
              icon,
              size: 60,
            ),
            const SizedBox(height: 4),
            Text(
              text,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

@RoutePage()
class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DanbooruAuthCubit, DanbooruAuthState>(
      listener: (context, state) {
        final user = state.user;
        if (user is! UserAuthenticated) {
          AutoRouter.of(context).replace(const LoginRoute());
        }
      },
      builder: (context, state) {
        final user = state.user;
        if (user is! UserAuthenticated) return const SizedBox();
        return Scaffold(
          appBar: AppBar(
            leading: IconButton(
              onPressed: () => AutoRouter.of(context).pop(),
              icon: const Icon(Icons.arrow_back),
            ),
            title: const Text('User Profile'),
            actions: [
              IconButton(
                tooltip: 'Logout',
                onPressed: () => context.read<DanbooruAuthCubit>().logout(),
                icon: Transform.rotate(
                  angle: pi,
                  alignment: Alignment.center,
                  child: const Icon(
                    Icons.logout,
                  ),
                ),
              ),
            ],
          ),
          body: Align(
            alignment: Alignment.topCenter,
            child: ListView(
              shrinkWrap: true,
              padding: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height * 0.12,
              ),
              physics: const BouncingScrollPhysics(),
              children: [
                const Icon(
                  Icons.account_circle,
                  size: 90,
                ),
                const SizedBox(height: 16),
                Center(
                  child: Column(
                    children: [
                      Text(
                        user.name,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text('ID: ${user.id}'),
                      const SizedBox(height: 60),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          children: [
                            TextIconButton(
                              icon: Icons.image,
                              text: "Posts",
                              onPressed: () => AutoRouter.of(context).push(
                                PostRouteWrapper(
                                  postScreenType: PostScreenType.user,
                                ),
                              ),
                            ),
                            TextIconButton(
                              icon: Icons.favorite,
                              text: "Favorites",
                              onPressed: () => AutoRouter.of(context).push(
                                PostRouteWrapper(
                                  postScreenType: PostScreenType.favorites,
                                ),
                              ),
                            ),
                            TextIconButton(
                              icon: Icons.list,
                              text: "Saved Posts",
                              onPressed: () => AutoRouter.of(context).push(
                                PostRouteWrapper(
                                  postScreenType: PostScreenType.favorites,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
