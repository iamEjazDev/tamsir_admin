import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tamsir_admin/constanats/color_constants.dart';
import 'package:tamsir_admin/constanats/icons_constants.dart';
import 'package:tamsir_admin/views/pages/onboarding_screen.dart';

class Orders extends StatelessWidget {
  const Orders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.whiteColor,
      body: Column(
        children: [
          SizedBox(height: 62.h),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 22.h,
                  backgroundColor: const Color(0xffF8F8F8),
                  child: SvgPicture.asset(
                    IconsConstants.arrowLeft
                  ),
                ),
                Text('Orders',
                style: GoogleFonts.inter(
                  fontSize: 25.sp,
                  fontWeight: FontWeight.w600
                )),
              SizedBox(width: 20.w,)
              ],
            )),
            SizedBox(height: 16.h),
            Divider(
              height: 2.h,
              color: ColorConstants.grayColor,
            ),
            SizedBox(height: 19.h),
            Container(
              height: 130.h,
              width: 356.w,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: const Color(0xffA3A3A3))
              ),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Wedding day preparation',
                style: GoogleFonts.inter(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600
                )),
              Row(
                children: [
                  Text('26/10/2024-3:00PM',
                  style: GoogleFonts.inter(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xffA3A3A3)
                  )),
                RichText(
                  text:TextSpan(
                    children: [
                      TextSpan(
                        text: '100',
                        style: GoogleFonts.inter(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xffEF0000)
                      )),
                      TextSpan(
                        text: 'OMR',
                        style: GoogleFonts.inter(
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xffEF0000)
                      ))
                    ]
                  )),
                 CommonUseButton(
                  height: 30.h, 
                  width: 102.w, 
                  text: 'Pending', 
                  fontSize: 15.sp, 
                  fontWeight: FontWeight.w600, 
                  textColor: const Color(0xffFFC005), 
                  backgroundColor: const Color(0xffFFECB3), 
                  borderradius: BorderRadius.circular(5),
                  onPressed: () {
                    
                  },)
                ],
              )
              ],
            ) , 
            )
        ],
      ),
    );
  }
}