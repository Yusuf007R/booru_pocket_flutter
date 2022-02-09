import 'package:auto_route/auto_route.dart';
import 'package:booru_pocket_flutter/blocs/settings_cubit/settings_cubit.dart';
import 'package:booru_pocket_flutter/theme/theme_constants.dart';
import 'package:booru_pocket_flutter/utils/enum_value_getter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:booru_pocket_flutter/utils/string_extentions.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsCubit, SettingsState>(
      builder: (context, state) {
        SettingsCubit settingsCubit = context.read<SettingsCubit>();

        return Scaffold(
          appBar: AppBar(
            title: const Text('Danbooru Log in'),
            leading: IconButton(
                onPressed: () => {
                      AutoRouter.of(context).pop(),
                    },
                icon: const Icon(Icons.arrow_back)),
          ),
          body: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            children: [
              const SettingsSectionDivider(text: 'Display'),
              ListTileDropDownMenu(
                title: 'App theme',
                subtitle: state.themeMode.name.capitalize(),
                items: ThemeMode.values.map((e) => e.name.capitalize()),
                onSelected: (String value) => settingsCubit
                    .setThemeMode(enumValueGetter(ThemeMode.values, value)),
              ),
              ListTileDropDownMenu(
                title: 'Grid Image Quality',
                subtitle: state.gridImageQuality.name.capitalize(),
                items: ImageQuality.values.map((e) => e.name.capitalize()),
                onSelected: (String value) => settingsCubit.setGridImageQuality(
                    enumValueGetter(ImageQuality.values, value)),
              ),
              ListTileDropDownMenu(
                title: 'Detail Image Quality',
                subtitle: state.detailPageQuality.name.capitalize(),
                items: ImageQuality.values.map((e) => e.name.capitalize()),
                onSelected: (String value) =>
                    settingsCubit.setDetailPageQuality(
                        enumValueGetter(ImageQuality.values, value)),
              ),
              ListTileDropDownMenu(
                title: 'Grid Type',
                subtitle: state.gridType.name.capitalize(),
                items: GridType.values.map((e) => e.name.capitalize()),
                onSelected: (String value) => settingsCubit
                    .setGridType(enumValueGetter(GridType.values, value)),
              ),
              SwitchListTile(
                contentPadding: const EdgeInsets.all(0),
                title: const Text('Rounded grid corners'),
                value: state.gridRoundedCorners,
                onChanged: (bool value) {
                  Feedback.forTap(context);
                  settingsCubit.toggleGridRoundedCorners();
                },
              ),
              ListTileDropDownMenu<int>(
                title: 'Grid Columns',
                subtitle: state.gridColumns.toString(),
                items: const [1, 2, 3, 4, 5],
                onSelected: (int value) => settingsCubit.setGridColumns(value),
              ),
              const SettingsSectionDivider(text: 'Booru'),
              SwitchListTile(
                contentPadding: const EdgeInsets.all(0),
                title: const Text('Safe mode'),
                value: state.safeMode,
                onChanged: (bool value) {
                  Feedback.forTap(context);
                  settingsCubit.toggleSafeMode();
                },
              ),
              ListTileDropDownMenu<int>(
                title: 'Page limit',
                subtitle: state.pageLimit.toString(),
                items: const [20, 50, 80, 100, 150, 200],
                onSelected: (int value) => settingsCubit.setPageLimit(value),
              ),
              const SettingsSectionDivider(text: 'Download'),
              ListTileDropDownMenu(
                title: 'Download quality',
                subtitle: state.downloadQuality.name.capitalize(),
                items: ImageQuality.values.map((e) => e.name.capitalize()),
                onSelected: (String value) => settingsCubit.setDownloadQuality(
                    enumValueGetter(ImageQuality.values, value)),
              ),
              ListTile(
                contentPadding: const EdgeInsets.all(0),
                title: const Text('Download directory'),
                subtitle: Text(state.defaultDownloadPath.toString()),
                onTap: () => settingsCubit.openDefaultPathSelector(),
              )
            ],
          ),
        );
      },
    );
  }
}

class SettingsSectionDivider extends StatelessWidget {
  const SettingsSectionDivider({Key? key, required this.text})
      : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: secondaryColor,
        ),
      ),
    );
  }
}

class ListTileDropDownMenu<T> extends StatelessWidget {
  ListTileDropDownMenu({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.items,
    required this.onSelected,
  }) : super(key: key);

  final String title;
  final String subtitle;

  final Iterable<T> items;
  final void Function(T) onSelected;
  final GlobalKey _menuKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(0),
      title: Text(title),
      onTap: () {
        dynamic state = _menuKey.currentState;
        state.showButtonMenu();
      },
      subtitle: Text(subtitle),
      trailing: PopupMenuButton(
        key: _menuKey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        onSelected: onSelected,
        child: const Icon(
          Icons.expand_more,
          size: 28,
        ),
        itemBuilder: (context) => items
            .map(
              (e) => PopupMenuItem(
                value: e,
                padding: const EdgeInsets.all(0),
                child: ListTile(
                  minVerticalPadding: 0,
                  title: Text(
                    e.runtimeType == String ? e as String : e.toString(),
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
