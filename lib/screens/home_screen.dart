import 'package:auto_route/auto_route.dart';
import 'package:booru_pocket_flutter/router/router.gr.dart';
import 'package:booru_pocket_flutter/screens/post_screen.dart';
import 'package:booru_pocket_flutter/widgets/drawer_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
        PostRouteHomePage(postScreenType: PostScreenType.popular),
        PostRouteHomePage(inputTextValue: 'order:rank'),
        PostRouteHomePage(inputTextValue: 'order:rank'),
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
          bottomNavigationBar: Builder(
            builder: (context) => ValueListenableBuilder(
              valueListenable: context.read<ValueNotifier<bool>>(),
              builder: (context, bool value, child) {
                return Visibility(
                  visible: value,
                  child: BottomNavigationBar(
                    type: BottomNavigationBarType.fixed,
                    currentIndex: tabsRouter.activeIndex,
                    onTap: (index) {
                      tabsRouter.setActiveIndex(index);
                    },
                    items: const [
                      BottomNavigationBarItem(
                        icon: Icon(Icons.image),
                        label: 'Posts',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.star),
                        label: 'Popular',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.local_fire_department),
                        label: 'Hot',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.collections_bookmark),
                        label: 'Pools',
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
