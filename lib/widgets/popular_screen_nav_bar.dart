import 'package:booru_pocket_flutter/blocs/popular_screen_nav_bar/popular_screen_nav_bar_cubit.dart';
import 'package:booru_pocket_flutter/blocs/query_params_cubit/query_params_cubit.dart';
import 'package:booru_pocket_flutter/models/api/queryparams/queryparams.dart';
import 'package:booru_pocket_flutter/widgets/nav_bar_skeleton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class PopularScreenNavBar extends StatefulWidget {
  const PopularScreenNavBar({Key? key}) : super(key: key);

  @override
  PopularScreenNavBarStateWidget createState() =>
      PopularScreenNavBarStateWidget();
}

class PopularScreenNavBarStateWidget extends State<PopularScreenNavBar> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PopularScreenNavbarCubit, PopularScreenNavBarState>(
      builder: (context, state) {
        return NavBarSkeleton(
          leftSideWidgets: [
            Padding(
              child: GestureDetector(
                onTap: () {
                  Feedback.forTap(context);
                  context.read<ScaffoldState>().openDrawer();
                },
                child: const Icon(MdiIcons.menu, size: 28, color: Colors.white),
              ),
              padding: const EdgeInsets.only(left: 10),
            ),
            const Padding(
              child: Text(
                'Popular',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              padding: EdgeInsets.only(top: 4, left: 3),
            ),
          ],
          rightSideWidgets: [
            Padding(
              child: GestureDetector(
                onTap: () async {
                  Feedback.forTap(context);
                  final queryParams =
                      context.read<QueryParamsCubit>().state.queryParams;
                  if (queryParams is PopularParams) {
                    final DateTime? date = await showDatePicker(
                        context: context,
                        initialDate: queryParams.date,
                        firstDate: DateTime.fromMillisecondsSinceEpoch(0),
                        lastDate: DateTime.now());
                    if (date == null) return;
                    context.read<PopularScreenNavbarCubit>().setDate(date);
                  }
                },
                child: const Icon(Icons.today, size: 28, color: Colors.white),
              ),
              padding: const EdgeInsets.only(right: 5),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 5),
              child: PopupMenuButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                offset: const Offset(0.0, 38.0),
                onSelected: (value) {
                  final ScaleType scale = ScaleType.values.firstWhere(
                    (element) =>
                        element.toString().split('.').last == value.toString(),
                    orElse: () => ScaleType.day,
                  );
                  context.read<PopularScreenNavbarCubit>().setScale(scale);
                },
                child: const Icon(Icons.list, size: 28, color: Colors.white),
                itemBuilder: (context) => [
                  const PopupMenuItem(
                    value: 'day',
                    padding: EdgeInsets.all(0),
                    child: ListTile(
                      minLeadingWidth: 0,
                      leading: Icon(MdiIcons.calendar),
                      title: Text("day"),
                    ),
                  ),
                  const PopupMenuItem(
                    value: 'week',
                    padding: EdgeInsets.all(0),
                    child: ListTile(
                      minLeadingWidth: 0,
                      leading: Icon(MdiIcons.calendarRange),
                      title: Text("week"),
                    ),
                  ),
                  const PopupMenuItem(
                    value: 'month',
                    padding: EdgeInsets.all(0),
                    child: ListTile(
                      minLeadingWidth: 0,
                      leading: Icon(MdiIcons.calendarMonth),
                      title: Text("month"),
                    ),
                  )
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
