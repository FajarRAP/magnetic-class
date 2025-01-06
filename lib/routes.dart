import 'package:flutter/material.dart';

import 'constants.dart';
import 'pages/home_page.dart';
import 'pages/items_page.dart';

Route<dynamic>? onGenerateRoute(RouteSettings settings) {
  MaterialPageRoute toRoute(Widget page) =>
      MaterialPageRoute(builder: (context) => page);

  switch (settings.name) {
    case '/':
      return toRoute(const HomePage());
    case '/tools':
      final args = settings.arguments as Map<String, dynamic>;
      final title = args['title'] as String;
      final items = args['items'] as List<Item>;

      return toRoute(ItemsPage(title: title, items: items));
    default:
      return null;
  }
}
