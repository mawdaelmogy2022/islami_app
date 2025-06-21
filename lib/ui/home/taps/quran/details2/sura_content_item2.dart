import 'package:flutter/material.dart';
import 'package:islami_app/utils/app_style.dart';

class SuraContentItem2 extends StatelessWidget {
  String versecontent;
  SuraContentItem2({super.key, required this.versecontent});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * .04),
        child: Text(
          ' $versecontent',
          textDirection: TextDirection.rtl,
          style: AppStyle.primary20,
        ),
      ),
    );
  }
}
