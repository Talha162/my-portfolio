import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view_model/responsive.dart';
import 'package:flutter_portfolio/view/intro/components/side_menu_button.dart';
import 'package:flutter_portfolio/view/main/components/connect_button.dart';
import '../../../res/constants.dart';
import 'navigation_button_list.dart';
class TopNavigationBar extends StatelessWidget {
  const TopNavigationBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: defaultPadding),
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      decoration: BoxDecoration(
        color: surfaceColor.withOpacity(0.7),
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Colors.white10),
        boxShadow: const [
          BoxShadow(
            color: Colors.black54,
            blurRadius: 20,
            offset: Offset(0, 10),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(defaultPadding / 2),
            child: !Responsive.isLargeMobile(context)
                ? Image.asset('assets/images/triange_icon.png', height: 28)
                : MenuButton(onTap: () => Scaffold.of(context).openDrawer(),),
          ),
          const Spacer(flex: 2,),
          if(!Responsive.isLargeMobile(context))  const NavigationButtonList(),
          const Spacer(flex: 2,),
          const ConnectButton(),
        ],
      ),
    );
  }
}
