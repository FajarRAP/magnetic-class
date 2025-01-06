import 'package:flutter/material.dart';

import '../constants.dart';
import '../helpers.dart';
import '../widgets/horizontal_image_and_title.dart';

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
        itemBuilder: (context, index) => HorizontalImageAndTitle(
          description: items[index].description,
          title: items[index].title,
          imageUrl: getImageItemPath(items[index]),
        ),
        separatorBuilder: (context, index) => const SizedBox(height: 12),
        itemCount: items.length,
        padding: const EdgeInsets.all(16),
      ),
    );
  }
}
