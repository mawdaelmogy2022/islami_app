import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:islami_app/ui/home/home_screen.dart';
import 'package:islami_app/utils/app_colors.dart';
import 'package:islami_app/utils/app_images.dart';
import 'package:islami_app/utils/app_style.dart';

class OnBoardingPage extends StatefulWidget {
  static const routeName = 'OnBoardingPage';
  const OnBoardingPage({super.key});

  @override
  OnBoardingPageState createState() => OnBoardingPageState();
}

class OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();
  int currentPageIndex = 0;

  void _onIntroEnd(context) {
    Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    PageDecoration pageDecoration = PageDecoration(
      bodyPadding:
          EdgeInsets.only(left: width * .02, right: width * .02, bottom: .02),
      pageColor: Colors.black,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.black,
      onChange: (index) {
        setState(() {
          currentPageIndex = index;
        });
      },
      showSkipButton: currentPageIndex != 0,
      pages: [
        PageViewModel(
          titleWidget: Column(
            children: [
              Image.asset(
                AppImages.logo,
                height: height * .183,
                width: width * .67,
              ),
              const SizedBox(height: 16),
              Image.asset(
                AppImages.onboardingScreen1,
                height: height * .445,
                width: width * .92,
              ),
              SizedBox(height: height * .085),
              Text(
                'Welcome To Islami App',
                style: AppStyle.primary24,
                textAlign: TextAlign.center,
              ),
            ],
          ),
          body: '',
          decoration: pageDecoration,
        ),
        PageViewModel(
          titleWidget: Column(
            children: [
              Image.asset(
                AppImages.logo,
                height: height * .183,
                width: width * .67,
              ),
              const SizedBox(height: 16),
              Image.asset(
                AppImages.onboardingScreen2,
                height: height * .445,
                width: width * .92,
              ),
              SizedBox(height: height * .042),

              Text(
                'Welcome To Islami App',
                style: AppStyle.primary24,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),

              // وصف
              Text(
                'We Are Very Excited To Have You In Our Community',
                style: AppStyle.primary20,
                textAlign: TextAlign.center,
              ),
            ],
          ),
          body: '', // نتركه فاضي لأننا استخدمنا titleWidget
          decoration: pageDecoration,
        ),
        PageViewModel(
          titleWidget: Column(
            children: [
              Image.asset(
                AppImages.logo,
                height: height * .183,
                width: width * .67,
              ),
              const SizedBox(height: 16),
              Image.asset(
                AppImages.onboardingScreen3,
                height: height * .445,
                width: width * .92,
              ),
              SizedBox(height: height * .042),

              Text(
                'Reading the Quran',
                style: AppStyle.primary24,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),

              // وصف
              Text(
                'Read, and your Lord is the Most Generous',
                style: AppStyle.primary20,
                textAlign: TextAlign.center,
              ),
            ],
          ),
          body: '', // نتركه فاضي لأننا استخدمنا titleWidget
          decoration: pageDecoration,
        ),
        PageViewModel(
          titleWidget: Column(
            children: [
              Image.asset(
                AppImages.logo,
                height: height * .183,
                width: width * .67,
              ),
              const SizedBox(height: 16),
              Image.asset(
                AppImages.onboardingScreen4,
                height: height * .445,
                width: width * .92,
              ),
              SizedBox(height: height * .042),

              Text(
                'Bearish',
                style: AppStyle.primary24,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),

              // وصف
              Text(
                'Praise the name of your Lord, the Most High',
                style: AppStyle.primary20,
                textAlign: TextAlign.center,
              ),
            ],
          ),
          body: '', // نتركه فاضي لأننا استخدمنا titleWidget
          decoration: pageDecoration,
        ),
        PageViewModel(
          titleWidget: Column(
            children: [
              Image.asset(
                AppImages.logo,
                height: height * .183,
                width: width * .67,
              ),
              const SizedBox(height: 16),
              Image.asset(
                AppImages.onboardingScreen5,
                height: height * .445,
                width: width * .92,
              ),
              SizedBox(height: height * .042),

              Text(
                'Holy Quran Radio',
                style: AppStyle.primary24,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),

              // وصف
              Text(
                'You can listen to the Holy Quran Radio through the application for free and easily.',
                style: AppStyle.primary20,
                textAlign: TextAlign.center,
              ),
            ],
          ),
          body: '', // نتركه فاضي لأننا استخدمنا titleWidget
          decoration: pageDecoration,
        ),
      ],
      onDone: () {
        Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
      },
      onSkip: () {
        // Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
        introKey.currentState?.animateScroll(currentPageIndex - 1);
      },
      skip: Text('Back', style: AppStyle.primary16),
      next: Text('Next', style: AppStyle.primary16),
      done: Text('Finish', style: AppStyle.primary16),
      dotsDecorator: const DotsDecorator(
        activeColor: AppColors.primaryColor,
        size: Size(7.0, 7.0),
        color: Color(0xFF707070),
        activeSize: Size(19.0, 7.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(25.0),
          ),
        ),
      ),
    );
  }
}
