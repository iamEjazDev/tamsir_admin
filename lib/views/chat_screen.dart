import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tamsir_admin/constanats/color_constants.dart';
import 'package:tamsir_admin/constanats/icons_constants.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.whiteColor,
      body: Column(
        children: [
          SizedBox(height: 62.h),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 28.0),
             child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: CircleAvatar(
                    radius: 25.h,
                    backgroundColor: const Color(0xffF8F8F8),
                    child: SvgPicture.asset(IconsConstants.arrowLeft),
                  ),
                  ),
                Text('Chat',
                style: GoogleFonts.inter(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w600
                )),
               SizedBox(width: 28.w,)
               ],
              ),
           ),
           SizedBox(height: 16.h),
          const Divider(
            color: Color(0xffD9D9D9),
            thickness: 2,
          ),
          SizedBox(height: 13.h),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Column(
              children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Messages',
                style: GoogleFonts.inter(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500
                )),
                 Text('See all',
                style: GoogleFonts.inter(
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xffAAAAAA)
                ))
              ],
             ),
             SizedBox(height: 13.h),
             Container(
              height: 110.h,
              width: 361.w,
              decoration: BoxDecoration(
                color: ColorConstants.whiteColor,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  width: 1,
                  color: const Color(0xffD9D9D9)),
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 10,
                    offset: Offset(0, 5),
                    spreadRadius: 0,
                    color: Color(0xff000000)
                  )
                ]
              ),
              child: Row(
                children: [
                  SvgPicture.asset(
                    IconsConstants.ahmed,
                  )
                ],
              ),
             )
              ],
            ),
          )
        ],
      ),
    );
  }
}