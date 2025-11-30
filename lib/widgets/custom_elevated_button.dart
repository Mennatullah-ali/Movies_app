import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movies_app/core/resources/colors_manager.dart';

class CustomElevatedButton extends StatelessWidget {
  CustomElevatedButton({super.key, required this.label, required this.onPressed, this.isBackButton=false});
  final VoidCallback onPressed;
  String label;
  bool isBackButton;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        side: BorderSide(
          width: 2.w,
          color: ColorsManager.yellow
        ),
        backgroundColor: isBackButton? ColorsManager.black: ColorsManager.yellow,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        fixedSize: Size(398, 55)
      ),
      onPressed:onPressed,
      child: Center(
        child: Text(
          label,
          style: GoogleFonts.inter(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: isBackButton? ColorsManager.yellow: ColorsManager.black,
          ),
        ),
      ),
    );
  }
}
