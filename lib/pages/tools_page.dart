import 'package:flutter/material.dart';
import 'package:magnetic_class/constants.dart';
import 'package:magnetic_class/widgets/horizontal_image_and_title.dart';

class ToolsPage extends StatelessWidget {
  const ToolsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alat Eksperimen'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          String match(Match? match) => '-';
          final url = tools[index].imageUrl;
          final loweredTitle = tools[index].title.toLowerCase();
          final slug = loweredTitle.splitMapJoin(' ', onMatch: match);
          return HorizontalImageAndTitle(
            description: tools[index].description,
            title: tools[index].title,
            imageUrl: '$url$slug.png',
          );
        },
        separatorBuilder: (context, index) => const SizedBox(height: 12),
        itemCount: tools.length,
        padding: const EdgeInsets.all(16),
      ),
    );
  }
}
