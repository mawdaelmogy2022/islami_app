import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/ui/home/taps/hadeth/hadith_details_screen.dart';
import 'package:islami_app/ui/home/taps/hadeth/model/hadith_model.dart';
import 'package:islami_app/utils/app_colors.dart';
import 'package:islami_app/utils/app_images.dart';
import 'package:islami_app/utils/app_style.dart';

class HadithItem extends StatefulWidget {
  int index;

  HadithItem({super.key, required this.index});

  @override
  State<HadithItem> createState() => _HadithItemState();
}

class _HadithItemState extends State<HadithItem> {
  HadithModel? hadithModel;

  @override
  void initState() {
    loadHadithFile(widget.index);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .pushNamed(HadithDetailsScreen.routeName, arguments: hadithModel);
      },
      child: Container(
        decoration: BoxDecoration(
            image: const DecorationImage(
                image: AssetImage(AppImages.hadithitembackground)),
            borderRadius: BorderRadius.circular(16),
            color: AppColors.primaryColor),
        child: hadithModel == null
            ? const Center(
                child: CircularProgressIndicator(
                color: AppColors.blackbgColor,
              ))
            : Padding(
                padding: EdgeInsets.only(
                    top: size.height * .01,
                    right: size.width * .02,
                    left: size.width * .02),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(AppImages.hadithCornerLeft),
                        Expanded(
                            child: Text(
                          textAlign: TextAlign.center,
                          hadithModel?.title ?? '',
                          style: AppStyle.black20,
                        )),
                        Image.asset(AppImages.hadithCornerright),
                      ],
                    ),
                    Expanded(
                        child: SingleChildScrollView(
                      child: Text(
                        textAlign: TextAlign.center,
                        hadithModel?.content ?? '',
                        style: AppStyle.black14,
                      ),
                    )),
                    Image.asset(
                      'assets/images/hadith_mosque_image.png',
                    )
                  ],
                ),
              ),
      ),
    );
  }

  void loadHadithFile(int index) async {
    String filecontent =
        await rootBundle.loadString('assets/files/hadith/h$index.txt');
    String title = filecontent.substring(0, filecontent.indexOf('\n'));
    String content = filecontent.substring(filecontent.indexOf('\n') + 1);
    hadithModel = HadithModel(title: title, content: content);
    setState(() {});
  }
}
