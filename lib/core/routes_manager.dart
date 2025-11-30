import 'package:flutter/material.dart';
import 'package:movies_app/features/onboarding/onboarding_screen.dart';

abstract class RoutesManager{
static const splash="/splash";
static const onBoarding="/onBoarding";


static Map<String, WidgetBuilder> router={

   onBoarding:(context)=> OnBoardingScreen(),
};
}