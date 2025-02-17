import 'package:flutter/material.dart';

import 'constants.dart';
import 'routes.dart';
import 'themes/theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: onGenerateRoute,
      initialRoute: splashRoute,
      theme: theme,
      title: 'Magnetic Class',
    );
  }
}
