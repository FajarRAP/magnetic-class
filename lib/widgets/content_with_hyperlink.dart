import 'package:flutter/material.dart';

import 'text_with_hyperlink.dart';

class ContentWithHyperlink extends TextWithHyperlink {
  const ContentWithHyperlink({
    super.key,
    required this.title,
    required super.content,
    required super.hyperlink,
    required super.onTap,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w500),
        ),
        TextWithHyperlink(content: content, hyperlink: hyperlink, onTap: onTap),
      ],
    );
  }
}
