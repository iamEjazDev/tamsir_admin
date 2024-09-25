import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tamsir_admin/constanats/color_constants.dart';
import 'package:tamsir_admin/views/booking_pending.dart';
import 'package:tamsir_admin/views/pages/onboarding_screen.dart';

class BookingProgress extends StatelessWidget {
  const BookingProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.whiteColor,
      body:  BookingsOrders(
        statusText: 'Progress',
        statusTextColor: const Color(0xff4042E2),
        statusContainerColor: const Color(0xffB3B4FF),
        statusBorderColor: const Color(0xff4042E2),
        firstButton: CommonUseButton(
          height: 52.h,
          width: 370.w,
          text: 'Chat',
          fontSize: 21.sp,
          fontWeight: FontWeight.w500,
          textColor: ColorConstants.whiteColor,
          backgroundColor: ColorConstants.orangeColor,
          borderradius: BorderRadius.circular(30),
          onPressed: () {},
        ),
         secondButton: CommonUseButton(
          height: 52.h,
          width: 370.w,
          text: 'Done',
          fontSize: 21.sp,
          fontWeight: FontWeight.w500,
          textColor: ColorConstants.whiteColor,
          backgroundColor: ColorConstants.redColor,
          borderradius: BorderRadius.circular(55),
          onPressed: () {},
        ),
      ),
    );
  }
}