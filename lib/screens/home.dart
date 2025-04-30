import 'package:flutter/material.dart';
import 'package:myapp/widgets/text_area.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Page')),
      body: Padding(padding: EdgeInsets.all(8.0), child: TextArea()),
    );
  }
}
