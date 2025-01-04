import 'package:flutter/material.dart';
import 'package:magnetic_class/constants.dart';
import 'package:magnetic_class/widgets/horizontal_image_and_title.dart';

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
        itemBuilder: (context, index) {
          String match(Match? match) => '-';
          final url = items[index].imageUrl;
          final loweredTitle = items[index].title.toLowerCase();
          final slug = loweredTitle.splitMapJoin(' ', onMatch: match);
          return HorizontalImageAndTitle(
            description: items[index].description,
            title: items[index].title,
            imageUrl: '$url$slug.png',
          );
        },
        separatorBuilder: (context, index) => const SizedBox(height: 12),
        itemCount: items.length,
        padding: const EdgeInsets.all(16),
      ),
    );
  }
}
