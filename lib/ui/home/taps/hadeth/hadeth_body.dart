import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/ui/home/taps/hadeth/hadith_item.dart';

class HadethBody extends StatelessWidget {
  const HadethBody({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(bottom: size.height * .03),
      child: CarouselSlider(
        options:
            CarouselOptions(height: size.height * .7, enlargeCenterPage: true),
        items: List.generate(50, (index) => index + 1).map((index) {
          return HadithItem(
            index: index,
          );
        }).toList(),
      ),
    );
  }
}
