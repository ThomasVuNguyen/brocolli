import 'package:flutter/material.dart';
import 'package:myapp/widgets/code_editor.dart';
import 'package:myapp/widgets/text_area.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Row(children: [TextArea(), CodeEditor()]));
  }
}
