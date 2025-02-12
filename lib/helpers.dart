import 'package:flutter/material.dart';

import 'models.dart';

String getImageItemPath(Item item) {
  String match(Match? match) => '-';
  final url = item.imageUrl;
  final loweredTitle = item.title.toLowerCase();
  final slug = loweredTitle.splitMapJoin(' ', onMatch: match);

  return '$url$slug.jpg';
}

MaterialPageRoute toRoute(Widget page) =>
    MaterialPageRoute(builder: (context) => page);
