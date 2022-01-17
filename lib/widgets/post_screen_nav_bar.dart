import 'dart:async';

import 'package:booru_pocket_flutter/blocs/post_screen_nav_bar/post_screen_nav_bar_cubit.dart';
import 'package:booru_pocket_flutter/blocs/query_params_cubit/query_params_cubit.dart';
import 'package:booru_pocket_flutter/models/api/autocomplete/autocomplete.dart';
import 'package:booru_pocket_flutter/models/api/queryparams/queryparams.dart';
import 'package:booru_pocket_flutter/router/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:booru_pocket_flutter/widgets/nav_bar_skeleton.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

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
    var navBarCubit = context.read<PostScreenNavbarCubit>();

    final String text = _textController.text.trimLeft();
    if (_textController.text != text) {
      _textController.value = _textController.value.copyWith(
        text: text,
        selection:
            TextSelection(baseOffset: text.length, extentOffset: text.length),
      );
    }

    if (_debounce != null) {
      _debounce?.cancel();
    }
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
          child: GestureDetector(
            onTap: () {
              Feedback.forTap(context);
              if (isPushedScreen) {
                AutoRouter.of(context).pop();
                return;
              }
              context.read<ScaffoldState>().openDrawer();
            },
            child: Icon(isPushedScreen ? Icons.arrow_back : Icons.menu,
                size: 28, color: Colors.black),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 10),
        ),
      ],
      rightSideWidgets: [
        Padding(
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
                color: Colors.black,
              ),
            ),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 10),
        ),
      ],
      backgroundWidget:
          SearchInput(focusNode: _focusNode, textController: _textController),
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
  _SearchInputState createState() => _SearchInputState();
}

class _SearchInputState extends State<SearchInput> {
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
                  left: offset.dx,
                  top: offset.dy + size.height,
                  width: size.width,
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
    int lastIndex = prev.lastIndexOf(' ');
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
        color: Colors.black,
      ),
      decoration: const InputDecoration(
        hintText: 'Search for tags...',
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
        contentPadding: EdgeInsets.symmetric(horizontal: 40),
      ),
    );
  }
}
