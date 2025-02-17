import 'package:flutter/material.dart';
import 'package:magnetic_class/pages/splash_screen.dart';

import 'constants.dart';
import 'helpers.dart';
import 'models.dart';
import 'pages/experiment_steps_page.dart';
import 'pages/home_page.dart';
import 'pages/items_page.dart';
import 'pages/materials_page.dart';
import 'pages/profile_page.dart';

Route<dynamic>? onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case splashRoute:
      return toRoute(const SplashScreen());
    case homeRoute:
      return toRoute(const HomePage());
    case materialsRoute:
      return toRoute(const MaterialsPage());
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
