import 'package:flutter/material.dart';

import 'pages/home_page.dart';
import 'pages/tools_page.dart';
import 'themes/theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/tools': (context) => const ToolsPage(),
      },
      theme: theme,
      title: 'Magnetic Class',
    );
  }
}
