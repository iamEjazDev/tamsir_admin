import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tamsir_admin/constanats/color_constants.dart';
import 'package:tamsir_admin/constanats/icons_constants.dart';
import 'package:tamsir_admin/controllers/languagecontroller.dart';
import 'package:tamsir_admin/models/bottom_nav_bar.dart';
import 'package:tamsir_admin/views/pages/onboarding_screen.dart';

class CreateAccount extends StatelessWidget {
   CreateAccount({super.key});

  final LanguageController languageController = Get.put(LanguageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.whiteColor,
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          children: [
            SizedBox(height: 73.h),
              Center(
                child: GestureDetector(
                onTap: languageController.toggleLanguage,
                child: Obx(
                  () => Container(
                    height: 35.h,
                    width: 166.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(66.sp)),
                      border: Border.all(color: ColorConstants.orangeColor),
                      gradient: LinearGradient(
                      colors: languageController.isEnglish.value
                      ? [ColorConstants.orangeColor, Colors.white]
                      : [Colors.white, ColorConstants.orangeColor],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      stops: const [0.5, 0.5])),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'English',
                          style: GoogleFonts.inter(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            color: languageController.isEnglish.value
                            ? Colors.white
                            : ColorConstants.orangeColor)),
                        Text(
                          'عربي',
                          style: GoogleFonts.inter(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            color: languageController.isEnglish.value
                            ? ColorConstants.orangeColor
                            : Colors.white)),
                      ],
                    ),
                  ),
                ),
               ),
              ),
            SizedBox(height: 20.h),
            Text('Get Started',
            style: GoogleFonts.inter(
            fontSize: 25.sp,
            fontWeight: FontWeight.w500
            )),
            SizedBox(height: 37.h),
            Image.asset('assets/images/create_account.png'),
            SizedBox(height: 53.h),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Phone Number',
                hintStyle: GoogleFonts.inter(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: ColorConstants.lightgrey
                ),
                prefixIcon:  Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SvgPicture.asset(
                    IconsConstants.call, 
                    width: 20.sp, 
                    height: 20.sp, 
                  ),
                ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color: ColorConstants.orangeColor)),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color: Color(0xffD1D5DB))),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color: ColorConstants.orangeColor))),
            ),
            SizedBox(height: 16.h),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Password',
                hintStyle: GoogleFonts.inter(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: ColorConstants.lightgrey
                ),
                prefixIcon:  Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SvgPicture.asset(
                    IconsConstants.lock, 
                    width: 20.sp, 
                    height: 20.sp, 
                  ),
                ),
                suffixIcon: Padding(
                  padding:  EdgeInsets.all(12.sp),
                  child: SvgPicture.asset(
                    IconsConstants.sysSlash,
                    // fit: BoxFit.cover,
                    height: 20.sp,
                    width: 20.sp,
                  ),
                ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color: ColorConstants.orangeColor)),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color: Color(0xffD1D5DB))),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color: ColorConstants.orangeColor))),
            ),
            const Spacer(),
            CommonUseButton(
              height: 48.h, 
              width: 327.w, 
              text: 'Log in', 
              fontSize: 16.sp, 
              fontWeight: FontWeight.w500, 
              textColor: ColorConstants.whiteColor, 
              borderradius: BorderRadius.circular(1000),
              backgroundColor: ColorConstants.orangeColor, 
              onPressed: () {
                Get.to( Bottomnav());
            }),
            SizedBox(height: 33.h)
          ],
        ),
      ),
    );
  }
}