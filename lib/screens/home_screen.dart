import 'package:auto_route/auto_route.dart';
import 'package:booru_pocket_flutter/router/router.gr.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        PostRouteHomePage(),
        PostRouteHomePage(),
        PostRouteHomePage(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.collections),
              label: 'Posts',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_fire_department),
              label: 'Popular',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.recommend),
              label: 'Recommended',
            ),
          ],
        );
      },
    );
  }
}
