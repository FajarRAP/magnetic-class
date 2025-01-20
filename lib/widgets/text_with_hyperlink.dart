import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class TextWithHyperlink extends StatelessWidget {
  const TextWithHyperlink({
    super.key,
    required this.content,
    required this.hyperlink,
    required this.onTap,
  });

  final String content;
  final String hyperlink;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return RichText(
      text: TextSpan(
        style: textTheme.bodySmall,
        text: '$content ',
        children: <InlineSpan>[
          TextSpan(
            style: hyperlinkStyle,
            recognizer: TapGestureRecognizer()..onTap = onTap,
            text: hyperlink,
          ),
        ],
      ),
    );
  }
}
