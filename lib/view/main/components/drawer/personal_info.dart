import 'package:flutter/material.dart';

import '../../../../res/constants.dart';
import 'header_info.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: defaultPadding/2,),
        AreaInfoText(title: 'Contact', text: '+92 302 523 2179'),
        AreaInfoText(title: 'Email', text: 'talha.cusit.pk@gmail.com'),
        AreaInfoText(title: 'Location', text: 'Peshawar, Pakistan'),
        AreaInfoText(title: 'LinkedIn', text: 'muhammad-talha-42b1ab315'),
        AreaInfoText(title: 'GitHub', text: 'Talha162'),
        SizedBox(
          height: defaultPadding,
        ),
        Text('Skills',style: TextStyle(color: Colors.white),),
        SizedBox(
          height: defaultPadding,
        ),
      ],
    );
  }
}
