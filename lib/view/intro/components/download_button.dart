import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../res/constants.dart';

class DownloadButton extends StatelessWidget {
  const DownloadButton({super.key});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        launchUrl(Uri.parse('mailto:talha.cusit.pk@gmail.com?subject=Resume%20Request&body=Hi%20Muhammad%20Talha%2C%20I%20would%20like%20to%20request%20your%20latest%20resume.'));
      },
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: defaultPadding/1.5,horizontal: defaultPadding*2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
            boxShadow:const [
              BoxShadow(color: accentTeal,offset: Offset(0, -1),blurRadius: 6),
              BoxShadow(color: accentCoral,offset: Offset(0, 1),blurRadius: 6),
            ],
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                accentTeal,
                accentCoral,
              ]),
        ),
        child: Row(
          children: [
            Text(
              'Get Resume',
              style: Theme.of(context).textTheme.labelSmall!.copyWith(
                  color: Colors.white,
                  letterSpacing: 1.2,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(width: defaultPadding/3,),
            const Icon(FontAwesomeIcons.download,color: Colors.white70,size: 15,)

          ],
        ),
      ),
    );
  }
}
