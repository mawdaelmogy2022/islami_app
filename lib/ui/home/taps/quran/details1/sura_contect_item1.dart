import 'package:flutter/material.dart';
import 'package:islami_app/utils/app_colors.dart';
import 'package:islami_app/utils/app_style.dart';

class SuraContectItem1 extends StatefulWidget {
  int index;
  String versecontent;

  SuraContectItem1(
      {super.key, required this.index, required this.versecontent});

  @override
  State<SuraContectItem1> createState() => _SuraContectItemState();
}

class _SuraContectItemState extends State<SuraContectItem1> {
  bool clicked = false;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return GestureDetector(
        onTap: () {
          clicked = true;
          setState(() {});
        },
        child: clicked == false
            ? Container(
                margin: EdgeInsets.symmetric(
                    horizontal: width * .03, vertical: width * .02),
                padding: EdgeInsets.symmetric(vertical: width * .04),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: AppColors.primaryColor, width: 2),
                ),
                child: Text(
                  '[${widget.index + 1}] ${widget.versecontent}',
                  textAlign: TextAlign.center,
                  style: AppStyle.primary20,
                ),
              )
            : Container(
                margin: EdgeInsets.symmetric(
                    horizontal: width * .03, vertical: width * .02),
                padding: EdgeInsets.symmetric(vertical: width * .04),
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: AppColors.primaryColor, width: 2),
                ),
                child: Text(
                  '[${widget.index + 1}] ${widget.versecontent}',
                  textAlign: TextAlign.center,
                  style: AppStyle.black20,
                ),
              ));
  }
}
