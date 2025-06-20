import 'package:flutter/material.dart';
import 'package:islami_app/ui/home/taps/quran/quran_resourses.dart';
import 'package:islami_app/utils/app_colors.dart';
import 'package:islami_app/utils/app_style.dart';

class SuraDetailsScreen extends StatelessWidget {
  static const String routeName = 'DetailsScreen';
  const SuraDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int index = ModalRoute.of(context)?.settings.arguments as int;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.blackbgColor,
        title: Text(
          QuranResourses.englishsuraname[index],
          style: AppStyle.primary20,
        ),
      ),
    );
  }
}
