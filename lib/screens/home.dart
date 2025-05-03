import 'package:flutter/material.dart';
import 'package:multi_split_view/multi_split_view.dart';
import 'package:myapp/widgets/code_editor.dart';
import 'package:myapp/widgets/text_area.dart';

import '../widgets/chat.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final MultiSplitViewController _controller = MultiSplitViewController(areas: [
    Area(builder: (context, area) => Draft.yellow()),
    Area(builder: (context, area) => ChatPage())
  ]);

  @override
  Widget build(BuildContext context) {
    return MultiSplitView(controller: _controller);
  }
}