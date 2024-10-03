import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tamsir_admin/constanats/color_constants.dart';
import 'package:tamsir_admin/controllers/onboarding_controller.dart';

class OnboardingScreen extends StatelessWidget {
   OnboardingScreen({super.key,required this.onNext});

   final VoidCallback onNext;

  final OnboardingController controller = Get.put(OnboardingController()); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.whiteColor,
      body: Column(
        children: [
          PageView1(onNext: onNext),
        ],
      ),
    );
  }
}

class PageView1 extends StatelessWidget {
  const PageView1({
    super.key,
    required this.onNext,
  });

  final VoidCallback onNext;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 69.h),
        Center(child: Image.asset('assets/images/onboarding.png',height: 68.h,width: 87.88.w,)),
        SizedBox(height: 47.h),
        Image.asset('assets/images/onboarding1.png'),
        SizedBox(height: 35.h),
        Text(
          textAlign: TextAlign.center,
          'tittle_onboarding1'.tr,
        style: GoogleFonts.inter(
          fontSize: 28.sp,
          fontWeight: FontWeight.w600
        )),
        SizedBox(height: 36.h),
        Text(
          textAlign: TextAlign.center,
          'text_onboarding1'.tr,
        style: GoogleFonts.nunitoSans(
          fontSize: 12.sp,
          fontWeight: FontWeight.w400,
          color: ColorConstants.lightgrey
        )),
      ],
    );
  }
}
class CommonUseButton extends StatelessWidget {
  const CommonUseButton({
    super.key,
    required this.height,
    required this.width,
    required this.text,
    required this.fontSize,
    required this.fontWeight,
    required this.textColor,
    required this.backgroundColor,
    required this.onPressed,
    this.borderradius,
    this.bordercolor,
  });

  final double height;
  final double width;
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color textColor;
  final Color backgroundColor;
  final VoidCallback onPressed;
  final BorderRadiusGeometry? borderradius;
  final Color? bordercolor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: bordercolor ?? Colors.transparent, 
            ),
            borderRadius: borderradius ?? BorderRadius.zero,
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: GoogleFonts.inter(
              fontSize: fontSize,
              fontWeight: fontWeight,
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}