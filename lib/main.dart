import 'package:flutter/material.dart';
import 'package:flutter_portfolio/res/constants.dart';
import 'package:flutter_portfolio/view/splash/splash_view.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  FlutterError.onError = (FlutterErrorDetails details) {
    FlutterError.presentError(details);
  };
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    final baseTextTheme = GoogleFonts.manropeTextTheme(Theme.of(context).textTheme);
    final displayTextTheme = GoogleFonts.spaceGroteskTextTheme(Theme.of(context).textTheme);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        colorScheme: const ColorScheme.dark(
          primary: accentTeal,
          secondary: accentCoral,
          surface: surfaceColor,
          background: bgColor,
        ),
        scaffoldBackgroundColor: Colors.transparent,
        useMaterial3: true,
        textTheme: baseTextTheme
            .apply(bodyColor: bodyTextColor, displayColor: Colors.white)
            .copyWith(
              headlineLarge: displayTextTheme.headlineLarge,
              headlineMedium: displayTextTheme.headlineMedium,
              headlineSmall: displayTextTheme.headlineSmall,
              titleLarge: displayTextTheme.titleLarge,
              titleMedium: displayTextTheme.titleMedium,
              titleSmall: displayTextTheme.titleSmall,
              bodyLarge: const TextStyle(color: bodyTextColor),
              bodyMedium: const TextStyle(color: bodyTextColor),
            ),
      ),

      home: SplashView()
    );
  }
}


