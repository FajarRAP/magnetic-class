import 'package:flutter/material.dart';

import '../helpers.dart';
import '../models.dart';
import '../widgets/horizontal_image_and_title.dart';
import '../widgets/reversed_horizontal_image_and_title.dart';

class ItemsPage extends StatelessWidget {
  const ItemsPage({
    super.key,
    required this.title,
    required this.items,
  });

  final String title;
  final List<Item> items;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: ListView.separated(
        itemBuilder: (context, index) => index.isEven
            ? HorizontalImageAndTitle(
                description: items[index].description,
                title: items[index].title,
                imageUrl: getImageItemPath(items[index]))
            : ReversedHorizontalImageAndTitle(
                description: items[index].description,
                title: items[index].title,
                imageUrl: getImageItemPath(items[index])),
        separatorBuilder: (context, index) => const SizedBox(height: 20),
        itemCount: items.length,
        padding: const EdgeInsets.all(16),
      ),
    );
  }
}
