import 'package:flutter/material.dart';

import '../constants.dart';

class ImageAlertDialog extends StatelessWidget {
  const ImageAlertDialog({
    super.key,
    required this.title,
    required this.filename,
  });

  final String title;
  final String filename;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return AlertDialog(
      content: Image.asset('$materialsUrl$filename'),
      title: Text(title),
      titleTextStyle: textTheme.bodyMedium,
    );
  }
}
