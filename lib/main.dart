import 'package:flutter/material.dart';
import 'package:islami_app/ui/home/home_screen.dart';
import 'package:islami_app/ui/home/taps/hadeth/hadith_details_screen.dart';
import 'package:islami_app/ui/home/taps/quran/details1/sura_details_screen1.dart';
import 'package:islami_app/ui/home/taps/quran/details2/sura_details_screen2.dart';
import 'package:islami_app/ui/introduction%20_screen/intoduction_screen.dart';
import 'package:islami_app/utils/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      darkTheme: AppTheme.dartheme,
      initialRoute: OnBoardingPage.routeName,
      routes: {
        OnBoardingPage.routeName: (context) => const OnBoardingPage(),
        HomeScreen.routeName: (context) => HomeScreen(),
        SuraDetailsScreen1.routeName: (context) => SuraDetailsScreen1(),
        SuraDetailsScreen2.routeName: (context) => SuraDetailsScreen2(),
        HadithDetailsScreen.routeName: (context) => HadithDetailsScreen(),
      },
    );
  }
}
