import 'package:flutter/material.dart';
import 'package:myapp/screens/home.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart' as shadcn;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return
      /*MaterialApp(
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        FlutterQuillLocalizations.delegate,
      ],
      title: 'Brocolli',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF1B4332)),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );*/
    shadcn.ShadcnApp(
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        FlutterQuillLocalizations.delegate,
      ],
      title: 'Brocolli',
      home: const HomePage(),
      theme: shadcn.ThemeData(
        colorScheme: shadcn.ColorSchemes.darkZinc(),
        radius: 0.5,
      ),
    );
  }
}
