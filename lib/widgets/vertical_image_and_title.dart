import 'package:flutter/material.dart';

class VerticalImageAndTitle extends StatelessWidget {
  const VerticalImageAndTitle({
    super.key,
    required this.title,
    required this.imageUrl,
  });

  final String title;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;

    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.grey.shade400,
            image: DecorationImage(
              image: AssetImage(imageUrl),
              fit: BoxFit.cover,
            ),
          ),
          height: 55,
          width: 55,
        ),
        const SizedBox(height: 6),
        Text(
          title,
          style: textTheme.labelSmall?.copyWith(color: colorScheme.onPrimary),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
