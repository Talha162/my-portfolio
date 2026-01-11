import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view_model/controller.dart';
import 'package:flutter_portfolio/res/constants.dart';
import 'package:flutter_portfolio/view/main/components/navigation_bar.dart';
import '../../view_model/responsive.dart';
import 'components/drawer/drawer.dart';
import 'components/navigation_button_list.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
class MainView extends StatelessWidget {
   const MainView({super.key, required this.pages});
  final List<Widget> pages;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [bgColor, secondaryColor, darkColor],
                ),
              ),
            ),
          ),
          const Positioned(
            top: -120,
            right: -100,
            child: GlowCircle(color: accentTeal, size: 320),
          ),
          const Positioned(
            bottom: -140,
            left: -120,
            child: GlowCircle(color: accentCoral, size: 360),
          ),
          Center(
            child: Column(
              children: [
                kIsWeb && !Responsive.isLargeMobile(context)
                    ? const SizedBox(height:defaultPadding*2,)
                    : const SizedBox(height:defaultPadding/2,),
                 const SizedBox(
                    height: 80,
                    child: TopNavigationBar(),
                ),
                if(Responsive.isLargeMobile(context))
                  const Row(children: [Spacer(),NavigationButtonList(),Spacer()],),
                Expanded(
                    flex: 9,
                    child: PageView(
                      scrollDirection: Axis.vertical,
                      physics: const NeverScrollableScrollPhysics(),
                      controller: controller,
                      children: [
                        ...pages
                      ],
                    ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class GlowCircle extends StatelessWidget {
  const GlowCircle({super.key, required this.color, required this.size});
  final Color color;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: RadialGradient(
          colors: [
            color.withOpacity(0.35),
            color.withOpacity(0.0),
          ],
        ),
      ),
    );
  }
}







