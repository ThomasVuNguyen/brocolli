import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';

class TextArea extends StatefulWidget {
  const TextArea({Key? key}) : super(key: key);

  @override
  _TextAreaState createState() => _TextAreaState();
}

class _TextAreaState extends State<TextArea> {
  final QuillController _controller = QuillController.basic();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return QuillEditor.basic(controller: _controller);
  }
}
