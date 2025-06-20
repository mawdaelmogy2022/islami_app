import 'package:flutter/material.dart';
import 'package:islami_app/utils/app_colors.dart';
import 'package:islami_app/utils/app_images.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'HomeScreen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          AppImages.quranbg,
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          bottomNavigationBar: Theme(
            data:
                Theme.of(context).copyWith(canvasColor: AppColors.primaryColor),
            child: BottomNavigationBar(
                currentIndex: selectedindex,
                onTap: (value) {
                  selectedindex = value;
                  setState(() {});
                },
                ////   type: BottomNavigationBarType.fixed,
                //  backgroundColor: AppColors.primaryColor,
                items: [
                  BottomNavigationBarItem(
                      icon: buildBottomNavigationItem(0, AppImages.iconquran),
                      label: 'Quran'),
                  BottomNavigationBarItem(
                      icon: buildBottomNavigationItem(1, AppImages.iconhadeth),
                      label: 'Hadith'),
                  BottomNavigationBarItem(
                      icon: buildBottomNavigationItem(2, AppImages.iconradio),
                      label: 'Tasbeeh'),
                  BottomNavigationBarItem(
                      icon: buildBottomNavigationItem(3, AppImages.icontasbeeh),
                      label: 'Radio'),
                  BottomNavigationBarItem(
                      icon: buildBottomNavigationItem(4, AppImages.iconazkar),
                      label: 'Time'),
                ]),
          ),
        )
      ],
    );
  }

  Widget buildBottomNavigationItem(int index, String imageUrl) {
    return selectedindex == index
        ? Container(
            padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: AppColors.blackbgColor),
            child: ImageIcon(AssetImage(imageUrl)))
        : ImageIcon(AssetImage(imageUrl));
  }
}
