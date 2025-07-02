import 'package:flutter/material.dart';
import 'package:islami_app/utils/app_colors.dart';
import 'package:islami_app/utils/app_images.dart';
import 'package:islami_app/utils/app_style.dart';

class RadioListItem extends StatefulWidget {
  RadioListItem({super.key});

  @override
  State<RadioListItem> createState() => _RadioListItemState();
}

class _RadioListItemState extends State<RadioListItem> {
  bool soundplay = false;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Container(
        clipBehavior: Clip.antiAlias,
        height: height * .15,
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            soundplay == false
                ? Image.asset(
                    AppImages.nosoundplayImage,
                  )
                : Image.asset(
                    AppImages.soundplayImage,
                  ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: height * .01),
                  child: Text(
                    'Radio Ibrahim Al-Akdar',
                    style: AppStyle.black20,
                  ),
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () {
                          soundplay = true;
                          setState(() {});
                        },
                        icon: const Icon(
                          Icons.play_arrow,
                          color: AppColors.blackColor,
                          size: 36,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: soundplay == false
                            ? const Icon(
                                Icons.volume_down,
                                color: AppColors.blackColor,
                                size: 36,
                              )
                            : const Icon(
                                Icons.volume_off,
                                color: AppColors.blackColor,
                                size: 36,
                              )),
                  ],
                )
              ],
            ),
          ],
        ));
  }
}
