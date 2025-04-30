import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';

class TextArea extends StatefulWidget {
  const TextArea({super.key});

  @override
  State<TextArea> createState() => _TextAreaState();
}

class _TextAreaState extends State<TextArea> {
  QuillController _controller = QuillController.basic();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _controller = QuillController.basic();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        QuillSimpleToolbar(
          controller: _controller,
          config: const QuillSimpleToolbarConfig(),
        ),
        Expanded(
          child: QuillEditor.basic(
            controller: _controller,
            //config: const QuillEditorConfig(),
          ),
        ),
      ],
    );
  }
}
