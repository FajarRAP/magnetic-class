import 'package:flutter/material.dart';

import 'constants.dart';
import 'pages/experiment_steps_page.dart';
import 'pages/home_page.dart';
import 'pages/items_page.dart';
import 'pages/profile_page.dart';

MaterialPageRoute toRoute(Widget page) =>
    MaterialPageRoute(builder: (context) => page);
Route<dynamic>? onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case homeRoute:
      return toRoute(const HomePage());
    case experimentItemsRoute:
      final args = settings.arguments as Map<String, dynamic>;
      final title = args['title'] as String;
      final items = args['items'] as List<Item>;

      return toRoute(ItemsPage(title: title, items: items));
    case experimentStepsRoute:
      return toRoute(const ExperimentStepsPage());
    case profileRoute:
      return toRoute(const ProfilePage());
    default:
      return null;
  }
}
