import 'package:flutter/material.dart';

class NavigationTextButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;

  const NavigationTextButton(
      {super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
          textStyle: Theme.of(context)
              .textTheme
              .labelMedium!
              .copyWith(fontWeight: FontWeight.w700, letterSpacing: 0.6),
        ),
        onPressed: onTap,
        child: Text(text));
  }
}
