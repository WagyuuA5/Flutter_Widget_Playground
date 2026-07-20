import 'package:flutter/material.dart';
import 'pages/playground_home_page.dart';

void main() => runApp(const WidgetPlaygroundApp());

class WidgetPlaygroundApp extends StatelessWidget {
  const WidgetPlaygroundApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widget Playground',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: Colors.indigo,
        useMaterial3: true,
      ),
      home: const PlaygroundHomePage(),
    );
  }
}
