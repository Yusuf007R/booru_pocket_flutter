import 'package:auto_route/auto_route.dart';
import 'package:booru_pocket_flutter/blocs/post_screen_nav_bar/post_screen_nav_bar_bloc.dart';
import 'package:booru_pocket_flutter/models/api/autocomplete.dart';
import 'package:booru_pocket_flutter/router/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostScreenNavBar extends StatefulWidget {
  const PostScreenNavBar({Key? key}) : super(key: key);

  @override
  State<PostScreenNavBar> createState() => _PostScreenNavBarState();
}

class _PostScreenNavBarState extends State<PostScreenNavBar> {
  final FocusNode _focusNode = FocusNode();
  final TextEditingController _textController = TextEditingController();
  bool isFieldFocused = false;

  @override
  void initState() {
    _focusNode.addListener(_focusListener);
    _textController.addListener(_onTextChange);
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
    //trim first space
    final String text = _textController.text.trimLeft();
    if (_textController.text != text) {
      _textController.value = _textController.value.copyWith(
        text: text,
        selection:
            TextSelection(baseOffset: text.length, extentOffset: text.length),
      );
    }
    //make autocomplete request
    context
        .read<PostScreenNavBarBloc>()
        .add(TextFieldUpdated(value: _textController.text));
  }

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: Container(
        child: Stack(
          fit: StackFit.expand,
          children: [
            SearchInput(focusNode: _focusNode, textController: _textController),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  child: InkWell(
                    onTap: () {
                      AutoRouter.of(context).push(
                        const PostRoute(),
                      );
                    },
                    child: const Icon(
                      Icons.menu,
                      size: 28,
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                ),
                Padding(
                  child: GestureDetector(
                    onTap: () {
                      Feedback.forTap(context);
                    },
                    child: AnimatedRotation(
                      turns: isFieldFocused ? (1.0 / 8.0) : 1.0,
                      duration: const Duration(milliseconds: 250),
                      curve: Curves.ease,
                      child: const Icon(
                        Icons.add,
                        size: 28,
                      ),
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 10),
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
  late final OverlayEntry _overlayEntry;
  final GlobalKey _widgetKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((_) async {
      _overlayEntry = _createOverlayEntry();
    });
    widget.focusNode.addListener(() {
      if (widget.focusNode.hasFocus && !_overlayEntry.mounted) {
        Overlay.of(context)?.insert(_overlayEntry);
      } else {
        _overlayEntry.remove();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _overlayEntry
      ..remove()
      ..dispose();
  }

  OverlayEntry _createOverlayEntry() {
    final RenderBox renderBox =
        _widgetKey.currentContext?.findRenderObject() as RenderBox;
    var size = renderBox.size;
    var offset = renderBox.localToGlobal(Offset.zero);

    return OverlayEntry(
        builder: (context) =>
            BlocBuilder<PostScreenNavBarBloc, PostScreenNavBarState>(
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
        context.read<PostScreenNavBarBloc>().add(TextFieldSubmited());
      },
      decoration: const InputDecoration(
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
        contentPadding: EdgeInsets.symmetric(horizontal: 40),
      ),
    );
  }
}
