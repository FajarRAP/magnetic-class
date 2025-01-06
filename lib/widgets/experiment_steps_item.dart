import 'package:flutter/material.dart';

class ExperimentStepsItem extends StatelessWidget {
  const ExperimentStepsItem({
    super.key,
    required this.title,
    required this.imageUrl,
    required this.description,
  });

  final String title;
  final String imageUrl;
  final String description;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            blurRadius: 4,
            color: Color(0xFFBDBDBD),
            offset: Offset(0, 2),
          ),
        ],
        color: Colors.grey.shade300,
      ),
      width: 250,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(12),
              ),
              color: colorScheme.primaryContainer,
            ),
            padding: const EdgeInsets.all(8),
            width: double.infinity,
            child: Text(
              title,
              style:
                  textTheme.labelLarge?.copyWith(fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(height: 16),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: AssetImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 16),
            height: 150,
            width: double.infinity,
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              description,
              style: textTheme.labelMedium,
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
