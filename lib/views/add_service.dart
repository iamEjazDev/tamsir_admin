import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tamsir_admin/constanats/color_constants.dart';
import 'package:tamsir_admin/constanats/icons_constants.dart';
import 'package:tamsir_admin/views/Tab_Indicator/store_about.dart';
import 'package:tamsir_admin/views/pages/onboarding_screen.dart';
import 'package:tamsir_admin/views/service_name.dart';

class AddService extends StatelessWidget {
  const AddService({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F2F2),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 67.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: CircleAvatar(
                  radius: 25.h,
                  backgroundColor: ColorConstants.whiteColor,
                  child: SvgPicture.asset(IconsConstants.arrowLeft),
                                ),
                ),
              Text('Service details',
              style: GoogleFonts.inter(
                fontSize: 24.sp,
                fontWeight: FontWeight.w600
              )),
               CircleAvatar(
                radius: 25.h,
                backgroundColor: ColorConstants.whiteColor,
                child: const Icon(Icons.close),
              )],
            ),
            SizedBox(height: 30.h),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: ColorConstants.whiteColor
              ),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Service Name',
                    style: GoogleFonts.inter(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600
                  ))),
                  SizedBox(height: 13.h),
                  CommonUseTfield(
                    hintText: 'Tamsier For Widding',
                    hintStyle: GoogleFonts.poppins(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xffD9D9D9)
                  )),
                  SizedBox(height: 11.h),
                 CommonUseTfield(
                    hintText: 'Ad description (add more details)',
                    hintStyle: GoogleFonts.poppins(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xffD9D9D9)),
                    maxlines: 5,  
                )])),
              SizedBox(height: 10.h),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: ColorConstants.whiteColor
                ),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'The Price',
                    style: GoogleFonts.inter(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600
                  ))),
                SizedBox(height: 10.h),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: 53.h,
                    width: 111.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: const Color(0xffD9D9D9))
                    ),
                   child:Center(
                     child: Text(
                       'OMR',
                     style: GoogleFonts.inter(
                       fontSize: 18.sp,
                       fontWeight: FontWeight.w700
                     ))))),
                SizedBox(height: 10.h),
                 Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'The Price',
                    style: GoogleFonts.inter(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w600
                  ))),
                SizedBox(height: 4.h),
                const CommonUseTfield(hintText: '')
                ],
              ),
              ),
              SizedBox(height: 10.h),
              const CommonUseTamsirType(text: 'Add Tamsir Type:',),
              SizedBox(height: 14.h),
              const CommonUseTamsirType(text: 'Add Tmasir Colors:'),
              SizedBox(height: 14.h),
              const CommonUseTamsirType(text: 'Add Accessory:'),
              SizedBox(height: 37.h),
              CommonUseButton(
                height: 61.h, 
                width: 368.w, 
                text: 'Done', 
                fontSize: 18.sp, 
                fontWeight: FontWeight.w600, 
                textColor: ColorConstants.whiteColor, 
                borderradius: BorderRadius.circular(55),
                backgroundColor: ColorConstants.orangeColor, 
                onPressed: (){}),
              SizedBox(height: 15.h)
            ],
          ),
        ),
      ),
    );
  }
}

class CommonUseTamsirType extends StatelessWidget {
  const CommonUseTamsirType({
    super.key,
  required this.text
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 0),
    child: Container(
      height: 128.h,
      width: 393.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: ColorConstants.whiteColor,
        border: Border.all(color:const Color(0xffD9D9D9)),
         boxShadow: [
    BoxShadow(
      color: Colors.black.withOpacity(0.2),
      spreadRadius: 2,
      blurRadius: 8,
      offset: const Offset(4, 6), 
     )]),
    child: Column(
      children: [
        SizedBox(height: 8.h),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 10.w),
            child: Text(text,
            style: GoogleFonts.inter(
              fontSize: 18.sp,
              fontWeight: FontWeight.w600
            ),),
          ),
        ),
    SizedBox(height: 3.h),
    Expanded(
    child: ListView.builder(
    itemCount: 10,
    scrollDirection: Axis.horizontal,
    itemBuilder: (context, index) {
      return Padding(
        padding:  EdgeInsets.symmetric(horizontal: 8.w),
        child: const CommonUseListRow(),
      );})),
    SizedBox(height: 10.h),
    ])));
  }
}