import 'package:flutter/material.dart';

class ReversedHorizontalImageAndTitle extends StatelessWidget {
  const ReversedHorizontalImageAndTitle({
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

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                title,
                style: textTheme.titleSmall,
              ),
              const SizedBox(height: 12),
              Text(
                description,
                style: textTheme.bodySmall,
                textAlign: TextAlign.end,
              ),
            ],
          ),
        ),
        const SizedBox(width: 12),
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
      ],
    );
  }
}
