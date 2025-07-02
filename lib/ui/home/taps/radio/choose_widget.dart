import 'package:flutter/material.dart';
import 'package:islami_app/utils/app_colors.dart';
import 'package:islami_app/utils/app_style.dart';

class ChooseWidget extends StatelessWidget {
  void Function() onclicked;
  String text;
  bool isselected;
  ChooseWidget(
      {super.key,
      required this.onclicked,
      required this.text,
      required this.isselected});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return GestureDetector(
        onTap: onclicked,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: height * .009),
          width: width * .45,
          height: height * .05,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: isselected == true
                  ? AppColors.primaryColor
                  : AppColors.blackColor),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: isselected == true ? AppStyle.black16 : AppStyle.white16,
          ),
        ));
  }
}
