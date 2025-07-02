import 'package:flutter/material.dart';
import 'package:islami_app/ui/home/taps/hadeth/model/hadith_model.dart';
import 'package:islami_app/utils/app_colors.dart';
import 'package:islami_app/utils/app_images.dart';
import 'package:islami_app/utils/app_style.dart';

class HadithDetailsScreen extends StatefulWidget {
  static const String routeName = 'HadithDetailsScreen';

  HadithDetailsScreen({super.key});

  @override
  State<HadithDetailsScreen> createState() => _HadithDetailsScreenState();
}

class _HadithDetailsScreenState extends State<HadithDetailsScreen> {
  List<String> verses = [];
  bool separatedvere = true;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    // int index = ModalRoute.of(context)?.settings.arguments as int;
    HadithModel hadithModel =
        ModalRoute.of(context)?.settings.arguments as HadithModel;

    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColors.blackbgColor,
        ),
        body: Stack(
          children: [
            Image.asset(
              AppImages.detailsbg,
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.fill,
            ),
            Column(
              children: [
                Text(
                  hadithModel.title,
                  style: AppStyle.primary20,
                ),
                SizedBox(
                  height: height * .08,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Text(
                      hadithModel.content,
                      textAlign: TextAlign.center,
                      style: AppStyle.primary16.copyWith(height: 2),
                    ),
                  ),
                ),
                Image.asset(AppImages.musqueimage)
              ],
            )
          ],
        ));
  }
}
