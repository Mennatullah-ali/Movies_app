import 'package:flutter/material.dart';
import 'package:movies_app/features/onboarding/default_onboarding_page.dart';
import 'package:movies_app/features/onboarding/first_onboarding_page.dart';
import 'package:movies_app/models/onboarding_model.dart';

class OnBoardingScreen extends StatefulWidget {
  OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int currentIndex = 0;
  final PageController pageController = PageController();

  void goToNextPage() {
    currentIndex++;
    pageController.animateToPage(
      currentIndex,
      duration: Duration(milliseconds: 200),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: PageView.builder(
        physics: NeverScrollableScrollPhysics(),
        controller: pageController,
        itemCount: OnBoardingModel.onBoardingScreens.length,
        onPageChanged: (index){
          setState(() {
            currentIndex=index;
          });
        },
        itemBuilder: (context, index) {
          if (index == 0) {
            return FirstOnboardingPage(nextPage: (){
              goToNextPage();
            },);
          }
          return DefaultOnboardingPage(model: OnBoardingModel.onBoardingScreens[index],onNextPress: goToNextPage,onBackPress: goToPreviousPage,isFirst: currentIndex==1,);
        },
      ),
    );
  }

  void goToPreviousPage() {
    currentIndex--;
    pageController.animateToPage(
      currentIndex,
      duration: Duration(milliseconds: 200),
      curve: Curves.easeInOut,
    );
  }
}
