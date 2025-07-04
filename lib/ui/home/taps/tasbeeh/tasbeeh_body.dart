import 'package:flutter/material.dart';
import 'package:islami_app/utils/app_images.dart';
import 'package:islami_app/utils/app_style.dart';

class TasbeehBody extends StatefulWidget {
  const TasbeehBody({super.key});

  @override
  State<TasbeehBody> createState() => TasbeehBodyState();
}

class TasbeehBodyState extends State<TasbeehBody> {
  double turns = 0.0;
  int counterZaker = 0;
  int counter = 0;
  List<String> azkars = [
    'سبحان الله ',
    'الحمد لله ',
    'لا اله الا الله',
    'الله اكبر ',
  ];

  void changeRotation() {
    counterZaker += 1;
    if (counterZaker > 33) {
      counterZaker = 0;
      counter += 1;
      if (counter >= 4) {
        counter = 0;
      }
    }
    setState(() => turns += .03);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'سَبِّحِ اسْمَ رَبِّكَ الأعلى',
          style: AppStyle.white36,
        ),
        Stack(
          alignment: Alignment.center,
          children: [
            AnimatedRotation(
              turns: turns,
              duration: const Duration(milliseconds: 300),
              child: Image.asset(
                AppImages.sebhaImage,
                width: size.width * .9,
                height: size.height * .5,
              ),
            ),
            GestureDetector(
              onTap: changeRotation,
              child: Column(
                children: [
                  Text(
                    azkars[counter],
                    style: AppStyle.white36,
                  ),
                  Text(
                    counterZaker.toString(),
                    style: AppStyle.white36,
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}

/*
,*/