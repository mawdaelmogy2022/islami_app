import 'package:flutter/material.dart';
import 'package:islami_app/utils/app_style.dart';

class SuraContentItem2 extends StatelessWidget {
  String versecontent;
  SuraContentItem2({super.key, required this.versecontent});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Text(
        ' $versecontent',
        textAlign: TextAlign.center,
        style: AppStyle.primary20,
      ),
    );
  }
}
