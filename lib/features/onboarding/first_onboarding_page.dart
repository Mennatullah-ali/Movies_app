import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movies_app/core/resources/colors_manager.dart';
import 'package:movies_app/models/onboarding_model.dart';
import 'package:movies_app/widgets/custom_elevated_button.dart';

class FirstOnboardingPage extends StatelessWidget {
   FirstOnboardingPage({super.key,required this.nextPage});
   final VoidCallback nextPage;
  final OnBoardingModel model=OnBoardingModel.onBoardingScreens[0];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(model.image),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Spacer(),
              Text(
                model.title,
                style: GoogleFonts.inter(
                  fontSize: 36.sp,
                  fontWeight: FontWeight.w500,
                  color: ColorsManager.white,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16.h,),
              Text(model.description, style: GoogleFonts.inter(
                fontSize: 20.sp,
                fontWeight: FontWeight.w400,
                color: ColorsManager.white.withOpacity(0.6),
              ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 24.h,),
              CustomElevatedButton(label: model.buttonLabel, onPressed:nextPage,),
              SizedBox(height: 30.h,),
            ],
          ),
        )

      ],
    );
  }
}
