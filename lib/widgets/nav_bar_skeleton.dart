import 'package:flutter/material.dart';

class NavBarSkeleton extends StatelessWidget {
  const NavBarSkeleton(
      {Key? key,
      this.leftSideWidgets = const [],
      this.rightSideWidgets = const [],
      this.backgroundWidget = const SizedBox.shrink()})
      : super(key: key);

  final List<Widget> leftSideWidgets;

  final List<Widget> rightSideWidgets;

  final Widget backgroundWidget;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: Container(
        child: Stack(
          fit: StackFit.expand,
          children: [
            backgroundWidget,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    ...leftSideWidgets,
                  ],
                ),
                Row(
                  children: [
                    ...rightSideWidgets,
                  ],
                ),
              ],
            ),
          ],
        ),
        width: MediaQuery.of(context).size.width * 0.95,
        height: 45,
        decoration: BoxDecoration(
          color: const Color(0xFFadb8b5),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      floating: true,
      titleSpacing: 0,
      centerTitle: true,
      backgroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
      expandedHeight: 45,
      elevation: 0,
    );
  }
}
