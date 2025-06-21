import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:islami_app/ui/home/taps/quran/details1/sura_contect_item1.dart';
import 'package:islami_app/ui/home/taps/quran/details2/sura_details_screen2.dart';
import 'package:islami_app/ui/home/taps/quran/quran_resourses.dart';
import 'package:islami_app/utils/app_colors.dart';
import 'package:islami_app/utils/app_images.dart';
import 'package:islami_app/utils/app_style.dart';

class SuraDetailsScreen1 extends StatefulWidget {
  static const String routeName = 'DetailsScreen';

  SuraDetailsScreen1({super.key});

  @override
  State<SuraDetailsScreen1> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen1> {
  List<String> verses = [];
  bool separatedvere = true;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    int index = ModalRoute.of(context)?.settings.arguments as int;
    if (verses.isEmpty) {
      loadFileContent(index);
    }

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.blackbgColor,
        title: Text(
          QuranResourses.englishsuraname[index],
          style: AppStyle.primary20,
        ),
        actions: [
          IconButton(
              onPressed: () {
                separatedvere = true;
                setState(() {});
              },
              icon: const Icon(Icons.notes)),
          IconButton(
              onPressed: () {
                separatedvere = false;
                setState(() {});
              },
              icon: const Icon(Icons.reorder))
        ],
      ),
      body: separatedvere == true
          ? Stack(
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
                      child: verses.isEmpty
                          ? const Center(
                              child: CircularProgressIndicator(
                              color: AppColors.primaryColor,
                            ))
                          : ListView.builder(
                              itemCount: verses.length,
                              itemBuilder: (context, index) {
                                return SuraContectItem1(
                                    index: index, versecontent: verses[index]);
                              }),
                    ),
                    Image.asset(AppImages.musqueimage),
                  ],
                )
              ],
            )
          : SuraDetailsScreen2(),
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
    print(lines.length);
    verses = lines;
    setState(() {});
    for (int x = 0; x < lines.length; x++) {
      print(lines[x]);
    }
  }
}
