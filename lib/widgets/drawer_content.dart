import 'package:auto_route/auto_route.dart';
import 'package:booru_pocket_flutter/blocs/danbooru_auth_cubit/danbooru_auth_cubit.dart';
import 'package:booru_pocket_flutter/router/router.gr.dart';
import 'package:booru_pocket_flutter/screens/post_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).viewPadding.top;
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.65,
      child: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.only(top: height + 12, left: 15, bottom: 12),
              child: const Text(
                'BooruPOCKET',
                style: TextStyle(
                  fontSize: 18.5,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            const Divider(
              color: Colors.white,
              thickness: 1,
            ),
            const DrawerTopList(),
            const DrawerBottomList(),
          ],
        ),
      ),
    );
  }
}

class DrawerBottomList extends StatelessWidget {
  const DrawerBottomList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(bottom: 5),
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      children: [
        const Divider(
          color: Colors.white,
          thickness: 1,
        ),
        DrawerTile(
            icon: MdiIcons.github,
            text: 'Github',
            onTap: () async {
              String url = 'https://github.com/Yusuf007R/booru_pocket_flutter';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                print('Could not launch $url');
              }
            }),
        DrawerTile(
          icon: Icons.settings,
          text: 'Settings',
          onTap: () {
            print('pressed');
          },
        ),
        DrawerTile(
          icon: MdiIcons.informationOutline,
          text: 'About',
          onTap: () {
            print('pressed');
          },
        ),
      ],
    );
  }
}

class DrawerTopList extends StatelessWidget {
  const DrawerTopList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: MediaQuery.removePadding(
        removeTop: true,
        context: context,
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            DrawerTile(
              icon: MdiIcons.accountCircle,
              text: 'Account',
              onTap: () {
                AutoRouter.of(context).push(const UserProfileRoute());
              },
            ),
            DrawerTile(
                icon: MdiIcons.heart,
                text: 'Favorites',
                onTap: () => AutoRouter.of(context)
                    .push(PostRoute(postScreenType: PostScreenType.favorites))),
            DrawerTile(
              icon: MdiIcons.formatListBulleted,
              text: 'Saved Posts',
              onTap: () {
                print('pressed');
              },
            ),
            DrawerTile(
              icon: MdiIcons.history,
              text: 'History',
              onTap: () {
                print('pressed');
              },
            ),
            DrawerTile(
              icon: MdiIcons.magnify,
              text: 'SauceNao',
              onTap: () {
                print('pressed');
              },
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerTile extends StatelessWidget {
  const DrawerTile({
    Key? key,
    required this.text,
    required this.icon,
    required this.onTap,
  }) : super(key: key);
  final String text;
  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.only(left: 12, bottom: 4),
      dense: true,
      title: Row(
        children: [
          Icon(icon),
          const SizedBox(
            width: 20,
          ),
          Text(text, style: const TextStyle(fontSize: 15))
        ],
      ),
      onTap: onTap,
    );
  }
}