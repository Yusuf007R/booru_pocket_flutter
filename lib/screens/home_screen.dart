import 'package:BooruPocket/router/router.gr.dart';
import 'package:BooruPocket/screens/post_screen.dart';
import 'package:BooruPocket/widgets/drawer_content.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  double? navbarHeight;
  final key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: [
        PostRouteWrapper(),
        PostRouteWrapper(postScreenType: PostScreenType.popular),
        PostRouteWrapper(strictTag: 'order:rank'),
        PostRouteWrapper(strictTag: 'order:rank'),
      ],
      drawer: const CustomDrawer(),
      transitionBuilder: (context, child, animation) => Provider(
        create: (context) => Scaffold.of(context),
        child: child,
      ),
      bottomNavigationBuilder: (context, tabsRouter) {
        return Builder(
          builder: (context) => ValueListenableBuilder(
            valueListenable: context.read<ValueNotifier<bool>>(),
            builder: (context, bool value, child) {
              return AnimatedContainer(
                height: value
                    ? navbarHeight != null
                        ? navbarHeight! + MediaQuery.of(context).padding.bottom
                        : null
                    : 0,
                duration: const Duration(milliseconds: 250),
                child: SingleChildScrollView(
                  physics: const NeverScrollableScrollPhysics(),
                  child: BottomNavigationBar(
                    key: key,
                    type: BottomNavigationBarType.fixed,
                    currentIndex: tabsRouter.activeIndex,
                    onTap: tabsRouter.setActiveIndex,
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
                ),
              );
            },
          ),
        );
      },
      // builder: (context, child, animation) {
      //   final tabsRouter = AutoTabsRouter.of(context);
      //   return Scaffold(
      //     drawer: const CustomDrawer(),
      //     body: FadeTransition(
      //       opacity: animation,
      //       child: Provider(
      //         create: (context) => Scaffold.of(context),
      //         child: child,
      //       ),
      //     ),
      //     bottomNavigationBar:
      //   );
      // },
    );
  }

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final height = key.currentContext?.size?.height;
      if (height != null) {
        final padding = MediaQuery.of(context).padding.bottom;
        navbarHeight = height - padding;
      }
    });
    super.initState();
  }
}
