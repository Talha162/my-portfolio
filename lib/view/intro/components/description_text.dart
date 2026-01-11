import 'package:flutter/material.dart';
import '../../../res/constants.dart';

import '../../../view_model/responsive.dart';

class AnimatedDescriptionText extends StatelessWidget {
  const AnimatedDescriptionText(
      {super.key, required this.start, required this.end});
  final double start;
  final double end;
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween(begin: start, end: end),
      duration: const Duration(milliseconds: 200),
      builder: (context, value, child) {
        return Text(
          'I build scalable Flutter apps and dashboards with clean architecture,${Responsive.isLargeMobile(context) ? '\n' : ' '}Firebase, and Node.js APIs${!Responsive.isLargeMobile(context) ? '\n' : ''}from polished UI to production.',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(color: bodyTextColor, wordSpacing: 2, fontSize: value),
        );
      },
    );
  }
}
