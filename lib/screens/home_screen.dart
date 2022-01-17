import 'package:auto_route/auto_route.dart';
import 'package:booru_pocket_flutter/router/router.gr.dart';
import 'package:booru_pocket_flutter/widgets/drawer_content.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
      routes: [
        PostRouteHomePage(),
        const PopularRouteHomePage(),
        PostRouteHomePage(),
      ],
      builder: (context, child, animation) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
            drawer: const CustomDrawer(),
            body: FadeTransition(
              opacity: animation,
              child: Provider(
                create: (context) => Scaffold.of(context),
                child: child,
              ),
            ),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: tabsRouter.activeIndex,
              onTap: (index) {
                tabsRouter.setActiveIndex(index);
              },
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.collections),
                  label: 'Posts',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.local_fire_department),
                  label: 'Popular',
                ),
              ],
            ));
      },
    );
  }
}
