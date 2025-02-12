import 'package:flutter/material.dart';

class OutlinePrimaryButton extends StatelessWidget {
  const OutlinePrimaryButton({
    super.key,
    required this.text,
    this.onPressed,
  });

  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;

    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: colorScheme.onPrimary,
        foregroundColor: colorScheme.primary,
        textStyle: textTheme.labelMedium,
      ),
      child: Text(text),
    );
  }
}
