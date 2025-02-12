import 'package:flutter/material.dart';

class HorizontalImageAndTitle extends StatelessWidget {
  const HorizontalImageAndTitle({
    super.key,
    required this.title,
    required this.description,
    required this.imageUrl,
  });

  final String title;
  final String description;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade400,
                  offset: const Offset(0, 2),
                  blurRadius: 4,
                ),
              ],
              color: Colors.grey.shade400,
              image: DecorationImage(
                image: AssetImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
            height: 100,
            width: 100,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: textTheme.titleSmall
                    ?.copyWith(color: colorScheme.onPrimary),
              ),
              const SizedBox(height: 12),
              Text(
                description,
                style:
                    textTheme.bodySmall?.copyWith(color: colorScheme.onPrimary),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
