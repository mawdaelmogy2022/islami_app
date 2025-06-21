import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:islami_app/ui/home/taps/quran/details2/sura_content_item2.dart';
import 'package:islami_app/ui/home/taps/quran/quran_resourses.dart';
import 'package:islami_app/utils/app_colors.dart';
import 'package:islami_app/utils/app_images.dart';
import 'package:islami_app/utils/app_style.dart';

class SuraDetailsScreen2 extends StatefulWidget {
  static const String routeName = 'SuraDetailsScreen2';

  SuraDetailsScreen2({super.key});

  @override
  State<SuraDetailsScreen2> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen2> {
  String content = '';

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    int index = ModalRoute.of(context)?.settings.arguments as int;
    if (content.isEmpty) {
      loadFileContent(index);
    }

    return Scaffold(
      /* appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.blackbgColor,
        title: Text(
          QuranResourses.englishsuraname[index],
          style: AppStyle.primary20,
        ),
      ),*/
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
              SizedBox(
                height: height * .02,
              ),
              Center(
                child: Text(
                  QuranResourses.arabicsuraname[index],
                  style: AppStyle.primary16,
                ),
              ),
              SizedBox(
                height: height * .06,
              ),
              Expanded(
                  child: content.isEmpty
                      ? const Center(
                          child: CircularProgressIndicator(
                          color: AppColors.primaryColor,
                        ))
                      : SuraContentItem2(versecontent: content)),
              Image.asset(AppImages.musqueimage),
            ],
          )
        ],
      ),
    );
  }

  loadFileContent(int index) async {
    String fileContent =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> lines = fileContent
        .split('\n')
        .map((line) => line.trim()) // شيل المسافات من أول وآخر السطر
        .where((line) => line.isNotEmpty) // استبعد السطور الفاضية
        .toList();
    for (int i = 0; i < lines.length; i++) {
      lines[i] += '[${i + 1}]';
    }
    content = lines.join();
    // verses = lines;
    setState(() {});
  }
}
