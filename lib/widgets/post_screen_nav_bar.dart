import 'dart:async';

import 'package:BooruPocket/blocs/post_screen_nav_bar/post_screen_nav_bar_cubit.dart';
import 'package:BooruPocket/blocs/query_params_cubit/query_params_cubit.dart';
import 'package:BooruPocket/models/api/autocomplete/autocomplete.dart';
import 'package:BooruPocket/models/api/queryparams/queryparams.dart';
import 'package:auto_route/auto_route.dart';
import 'package:BooruPocket/widgets/nav_bar_skeleton.dart';
import 'package:BooruPocket/widgets/tag.dart';
import 'package:BooruPocket/utils/string_extentions.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class PostScreenNavBar extends StatefulWidget {
  const PostScreenNavBar({Key? key}) : super(key: key);

  @override
  State<PostScreenNavBar> createState() => _PostScreenNavBarState();
}

class _PostScreenNavBarState extends State<PostScreenNavBar> {
  final FocusNode _focusNode = FocusNode();
  late final TextEditingController _textController;
  bool isFieldFocused = false;
  Timer? _debounce;
  bool expandTag = false;

  @override
  void initState() {
    final params = context.read<QueryParamsCubit>().state.queryParams;
    if (params is PostParams) {
      _textController = TextEditingController(
        text: params.tags,
      );
      _focusNode.addListener(_focusListener);
      _textController.addListener(_onTextChange);
    }

    super.initState();
  }

  @override
  void dispose() {
    _focusNode
      ..removeListener(_focusListener)
      ..dispose();
    _textController
      ..removeListener(_onTextChange)
      ..dispose();

    super.dispose();
  }

  void _focusListener() {
    if (_focusNode.hasFocus) {
      setState(() {
        isFieldFocused = true;
      });
    } else {
      setState(() {
        isFieldFocused = false;
      });
    }
  }

  void _onTextChange() {
    final navBarCubit = context.read<PostScreenNavbarCubit>();
    // final queryParams = context.read<QueryParamsCubit>();

    final String text = _textController.text.trimLeft();

    if (_textController.text != text) {
      _textController.value = _textController.value.copyWith(
        text: text,
        selection:
            TextSelection(baseOffset: text.length, extentOffset: text.length),
      );
    }

    if (_debounce != null) _debounce?.cancel();
    _debounce = Timer(
      const Duration(milliseconds: 150),
      () {
        navBarCubit.onTextFieldUpdated(_textController.text);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final bool isPushedScreen =
        AutoRouter.of(context).routeData.name == 'PostRoute';

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
      ],
      rightSideWidgets: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: GestureDetector(
            onTap: () {
              Feedback.forTap(context);
              if (_textController.text.isNotEmpty) {
                _textController.clear();
                return;
              }
              _focusNode.unfocus();
            },
            child: AnimatedRotation(
              turns: isFieldFocused ? (1.0 / 8.0) : 0,
              duration: const Duration(milliseconds: 150),
              curve: Curves.ease,
              child: const Icon(
                Icons.add,
                size: 28,
              ),
            ),
          ),
        ),
      ],
      backgroundWidget: Row(
        children: [
          Expanded(
            child: SearchInput(
                focusNode: _focusNode, textController: _textController),
          ),
          BlocBuilder<QueryParamsCubit, QueryParamsCubitState>(
            builder: (context, state) {
              if (state.strictTag == '') return Container();
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2),
                child: Tag(
                  color: Theme.of(context).colorScheme.secondary,
                  onPressed: () async {
                    if (expandTag) return;
                    setState(() {
                      expandTag = true;
                    });
                    await Future.delayed(const Duration(seconds: 3));
                    setState(() {
                      expandTag = false;
                    });
                  },
                  value: expandTag
                      ? state.strictTag
                      : state.strictTag.overFlowElipsis(10),
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class SearchInput extends StatefulWidget {
  const SearchInput(
      {Key? key, required this.textController, required this.focusNode})
      : super(key: key);
  final FocusNode focusNode;
  final TextEditingController textController;

  @override
  SearchInputState createState() => SearchInputState();
}

class SearchInputState extends State<SearchInput> {
  OverlayEntry? _overlayEntry;
  final GlobalKey _widgetKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    widget.focusNode.addListener(_focusListener);
  }

  @override
  void dispose() {
    super.dispose();
    widget.focusNode.removeListener(_focusListener);
    if (_overlayEntry != null) {
      _overlayEntry!.dispose();
      if (_overlayEntry!.mounted) _overlayEntry!.remove();
    }
  }

  void _focusListener() {
    if (widget.focusNode.hasFocus) {
      _overlayEntry ??= _createOverlayEntry();
      Overlay.of(context)?.insert(_overlayEntry!);
    } else {
      if (_overlayEntry != null) {
        if (_overlayEntry!.mounted) _overlayEntry!.remove();
      }
    }
  }

  OverlayEntry _createOverlayEntry() {
    final RenderBox renderBox =
        _widgetKey.currentContext?.findRenderObject() as RenderBox;
    final size = renderBox.size;
    final offset = renderBox.localToGlobal(Offset.zero);
    return OverlayEntry(
        builder: (context) =>
            BlocBuilder<PostScreenNavbarCubit, PostScreenNavBarState>(
              builder: (context, state) {
                return Positioned(
                  left: 10,
                  top: offset.dy + size.height,
                  width: MediaQuery.of(context).size.width * 0.95,
                  child: Material(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(10),
                    child: MediaQuery.removePadding(
                      context: context,
                      removeTop: true,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: state.autoCompletes.length,
                        itemBuilder: (BuildContext context, int index) {
                          final AutoComplete option =
                              state.autoCompletes.elementAt(index);
                          return ListTile(
                            enableFeedback: true,
                            onTap: () => onOptionTap(option),
                            title: Text(
                              option.value,
                              style: const TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                );
              },
            ));
  }

  void onOptionTap(AutoComplete option) {
    final String prev = widget.textController.text;
    final lastIndex = prev.lastIndexOf(' ');
    String newText;
    if (lastIndex > 1) {
      newText = "${prev.substring(0, lastIndex + 1)}${option.value} ";
    } else {
      newText = '${option.value} ';
    }
    widget.textController.value = widget.textController.value.copyWith(
      text: newText,
      selection: TextSelection(
        baseOffset: newText.length,
        extentOffset: newText.length,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: _widgetKey,
      controller: widget.textController,
      focusNode: widget.focusNode,
      onFieldSubmitted: (_) {
        context.read<PostScreenNavbarCubit>().onTextFieldSubmitted();
      },
      style: const TextStyle(
        color: Colors.white,
      ),
      cursorColor: Colors.white,
      decoration: const InputDecoration(
        hintText: 'Search for tags...',
        hintStyle: TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
      ),
    );
  }
}
