import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tamsir_admin/constanats/color_constants.dart';
import 'package:tamsir_admin/views/pages/onboarding_screen.dart';

class OnboardingScreen02 extends StatelessWidget {

  const OnboardingScreen02({super.key , required this.onNext});
   
   final VoidCallback onNext;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.whiteColor,
      body: Column(
        children: [
          PageView2(onNext: onNext),
          //  SizedBox(height: 33.h),
          CommonUseButton(
          height: 48.h,
          width: 327.w,
          text: 'Next',
          fontSize: 16.sp,
          fontWeight: FontWeight.w500,
          textColor: ColorConstants.whiteColor,
          backgroundColor: ColorConstants.orangeColor,
          borderradius: BorderRadius.circular(1000.sp),
          onPressed: () {
            onNext();
          },
        )
        ],
      ),
    );
  }
}

class PageView2 extends StatelessWidget {
  const PageView2({
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
        SizedBox(height: 31.h),
        Image.asset('assets/images/onboarding2.png'),
        SizedBox(height: 11.h),
        Text(
          textAlign: TextAlign.center,
          'tittle_onboarding2'.tr,
        style: GoogleFonts.inter(
          fontSize: 28.sp,
          fontWeight: FontWeight.w600
        )),
        SizedBox(height: 36.h),
        Text(
          textAlign: TextAlign.center,
          'text_onboarding2'.tr,
        style: GoogleFonts.nunitoSans(
          fontSize: 12.sp,
          fontWeight: FontWeight.w400,
          color: ColorConstants.lightgrey
        )),
        // SizedBox(height: 29.h),
       
      ],
    );
  }
}