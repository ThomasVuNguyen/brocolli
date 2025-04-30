import 'package:flutter/material.dart';
import 'package:myapp/widgets/code_editor.dart';
import 'package:myapp/widgets/text_area.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: TextArea(),
          ),
          VerticalDivider(width: 1),
          Expanded(
            flex: 1,
            child: CodeEditor(),
          ),
        ],
      ),
    );
  }
}
