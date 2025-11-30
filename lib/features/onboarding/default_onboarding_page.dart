import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movies_app/core/resources/colors_manager.dart';
import 'package:movies_app/models/onboarding_model.dart';
import 'package:movies_app/widgets/custom_elevated_button.dart';

class DefaultOnboardingPage extends StatelessWidget {
  DefaultOnboardingPage({super.key, required this.model, this.isFirst = false, required this.onNextPress, required this.onBackPress});

  final OnBoardingModel model;
  final bool isFirst;
  final VoidCallback onNextPress;
  final VoidCallback onBackPress;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(model.image),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            decoration: BoxDecoration(
              color: ColorsManager.black,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(40),
                topLeft: Radius.circular(40),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: 27.h),

                  Text(
                    model.title,
                    style: GoogleFonts.inter(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: ColorsManager.white,
                    ),
                    textAlign: TextAlign.center,
                  ),

                  // Description section only if not empty
                  if (model.description.isNotEmpty) ...[
                    SizedBox(height: 24.h),
                    Text(
                      model.description,
                      style: GoogleFonts.inter(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: ColorsManager.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],

                  if (!isFirst) SizedBox(height: 27.h),

                  CustomElevatedButton(
                    label: model.buttonLabel,
                    onPressed: onNextPress,
                  ),

                  SizedBox(height: 16.h),

                  if (!isFirst)
                    CustomElevatedButton(
                      label: "Back",
                      onPressed: onBackPress,
                      isBackButton: true,
                    ),
                ],
              )

            ),
          ),
        ),
      ],
    );
  }
}
