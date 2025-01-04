import 'package:flutter/material.dart';

import 'constants.dart';
import 'pages/home_page.dart';
import 'pages/items_page.dart';
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
      },
      onGenerateRoute: (settings) {
        if (settings.name == '/tools') {
          final args = settings.arguments as Map<String, dynamic>;
          final title = args['title'] as String;
          final items = args['items'] as List<Item>;

          return MaterialPageRoute(
            builder: (context) => ItemsPage(items: items, title: title),
          );
        }

        return null;
      },
      theme: theme,
      title: 'Magnetic Class',
    );
  }
} 
