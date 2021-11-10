import 'package:booru_pocket_flutter/blocs/post_screen_nav_bar/post_screen_nav_bar_bloc.dart';
import 'package:booru_pocket_flutter/models/api/autocomplete.dart';
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
      ..dispose()
      ..removeListener(_focusListener);
    _textController
      ..dispose()
      ..removeListener(_onTextChange);
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
            AutoCompleteTextField(
              focus: _focusNode,
              controller: _textController,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  child: InkWell(
                    child: Icon(
                      Icons.menu,
                      size: 28,
                    ),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                ),
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

class AutoCompleteTextField extends StatelessWidget {
  const AutoCompleteTextField({
    Key? key,
    required this.focus,
    required this.controller,
  }) : super(key: key);

  final TextEditingController controller;
  final FocusNode focus;

  void onOptionTap(AutoComplete option) {
    final String prev = controller.text;
    int lastIndex = prev.lastIndexOf(' ');
    String newText;
    if (lastIndex > 1) {
      newText = "${prev.substring(0, lastIndex + 1)}${option.value} ";
    } else {
      newText = '${option.value} ';
    }
    controller.value = controller.value.copyWith(
      text: newText,
      selection: TextSelection(
          baseOffset: newText.length, extentOffset: newText.length),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocSelector<PostScreenNavBarBloc, PostScreenNavBarState,
        List<AutoComplete>>(
      selector: (state) => state.autoCompletes,
      builder: (context, state) {
        return RawAutocomplete<AutoComplete>(
          textEditingController: controller,
          focusNode: focus,
          fieldViewBuilder:
              (context, textEditingController, focusNode, onFieldSubmitted) =>
                  TextField(
            controller: textEditingController,
            focusNode: focusNode,
            onSubmitted: (_) {
              context.read<PostScreenNavBarBloc>().add(TextFieldSubmited());
            },
            decoration: const InputDecoration(
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(horizontal: 40),
            ),
          ),
          optionsBuilder: (_) => state,
          optionsViewBuilder: (context, _, __) {
            return Align(
              key: ValueKey(state),
              alignment: Alignment.topLeft,
              child: Material(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(10),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.95,
                  child: MediaQuery.removePadding(
                    context: context,
                    removeTop: true,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: state.length,
                      itemBuilder: (BuildContext context, int index) {
                        final AutoComplete option = state.elementAt(index);
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
              ),
            );
          },
        );
      },
    );
  }
}
