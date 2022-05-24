import 'package:auto_route/auto_route.dart';
import 'package:booru_pocket_flutter/blocs/date_post_screen_nav_bar/date_post_screen_nav_bar_cubit.dart';
import 'package:booru_pocket_flutter/widgets/nav_bar_skeleton.dart';
import 'package:booru_pocket_flutter/widgets/pop_up_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:booru_pocket_flutter/utils/string_extentions.dart';

class DatePostScreenNavBar extends StatefulWidget {
  const DatePostScreenNavBar({Key? key}) : super(key: key);

  @override
  DatePostScreenNavBarStateWidget createState() =>
      DatePostScreenNavBarStateWidget();
}

class DatePostScreenNavBarStateWidget extends State<DatePostScreenNavBar> {
  @override
  Widget build(BuildContext context) {
    final bool isPushedScreen =
        AutoRouter.of(context).routeData.name == 'PostRoute';

    return BlocBuilder<DatePostScreenNavbarCubit, DatePostScreenNavbarState>(
      builder: (context, state) {
        final popularCubit = context.read<DatePostScreenNavbarCubit>();
        return NavBarSkeleton(
          leftSideWidgets: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: GestureDetector(
                onTap: () {
                  Feedback.forTap(context);
                  if (isPushedScreen) {
                    AutoRouter.of(context).pop();
                    return;
                  }
                  context.read<ScaffoldState>().openDrawer();
                },
                child: Icon(
                  isPushedScreen ? Icons.arrow_back : MdiIcons.menu,
                  size: 28,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 3.2, left: 3),
              child: Text(
                state.type.name.capitalize(),
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                  fontSize: 16,
                ),
              ),
            ),
          ],
          rightSideWidgets: [
            Padding(
              padding: const EdgeInsets.only(right: 5),
              child: GestureDetector(
                onTap: () async {
                  Feedback.forTap(context);
                  final DateTime? date = await showDatePicker(
                      context: context,
                      initialDate: state.date,
                      firstDate: DateTime.fromMillisecondsSinceEpoch(0),
                      lastDate: DateTime.now());
                  if (date == null) return;
                  popularCubit.setDate(date);
                },
                child: const Icon(Icons.today, size: 28, color: Colors.white),
              ),
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
                  popularCubit.setScale(scale);
                },
                child: const Icon(Icons.list, size: 28, color: Colors.white),
                itemBuilder: (context) => [
                  popUpItem(
                    icon: MdiIcons.calendar,
                    text: 'Day',
                    iconSeparation: 10,
                  ),
                  popUpItem(
                    icon: MdiIcons.calendarRange,
                    text: 'Week',
                    iconSeparation: 10,
                  ),
                  popUpItem(
                    icon: MdiIcons.calendarMonth,
                    text: 'Month',
                    iconSeparation: 10,
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
