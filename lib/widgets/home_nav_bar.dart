import 'package:flutter/material.dart';

class HomeNavBar extends StatelessWidget {
  const HomeNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: Container(
        child: const TextField(
          autocorrect: false,
          decoration: InputDecoration(
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            contentPadding: EdgeInsets.only(left: 10),
          ),
        ),
        width: MediaQuery.of(context).size.width * 0.95,
        height: 45,
        decoration: BoxDecoration(
            color: const Color(0xFFadb8b5),
            borderRadius: BorderRadius.circular(8)),
      ),
      floating: true,
      titleSpacing: 0,
      centerTitle: true,
      backgroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
      expandedHeight: 45,
    );
  }
}
