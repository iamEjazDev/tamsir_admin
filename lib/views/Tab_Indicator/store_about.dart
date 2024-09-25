import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tamsir_admin/constanats/color_constants.dart';
import 'package:tamsir_admin/constanats/icons_constants.dart';

class StoreAbout extends StatelessWidget {
  const StoreAbout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.whiteColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text('Store Name',
              style: GoogleFonts.inter(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500
              )),
            ),
            SizedBox(height: 4.sp),
            CommonUseTfield(
            hintText: 'Enter Your Store Name',
            suffixicon:  Padding(
            padding:  EdgeInsets.all(10.sp),
            child: SvgPicture.asset('assets/icons/edit.svg',),
            ),
            ),
          SizedBox(height: 20.h),
          Align(
              alignment: Alignment.centerLeft,
              child: Text('About this store',
              style: GoogleFonts.inter(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500
              ))),
            CommonUseTfield(
            hintText: 'Golend gate is provider water',
            maxlines: 3,
            suffixicon:   Padding(
            padding:  EdgeInsets.all(10.sp),
            child: SvgPicture.asset('assets/icons/edit.svg'),
            )),
            SizedBox(height: 10.h),
            Align(
              alignment: Alignment.centerLeft,
              child: Text('Business Hours',
              style: GoogleFonts.inter(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500
              ))),
            Container(
              height: 191.h,
              width: 362.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: const Color(0xffD9D9D9))
              ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                     SvgPicture.asset(
                        IconsConstants.edit,
                        height: 24.sp,
                        width: 24.sp,
                      ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Sunday',
                      style: GoogleFonts.inter(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400
                      )),
                      // SizedBox(width: 10.w),
                      Text('Closed',
                      style: GoogleFonts.inter(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400
                      )),
                      SizedBox(width: 32.w,)
                      // SvgPicture.asset(
                      //   IconsConstants.edit,
                      //   height: 24.sp,
                      //   width: 24.sp,
                      // ),
                    ],
                  ),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Monday',
                      style: GoogleFonts.inter(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400
                      )),
                      Text('Closed',
                      style: GoogleFonts.inter(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400
                      )),
                      SizedBox(width: 35.w,)
                    ],
                  ),
                 Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Tuesday',
                      style: GoogleFonts.inter(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400
                      )),
                      SizedBox(width: 0.w),
                      Text('09:00:00 - 22:00:00',
                      style: GoogleFonts.inter(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400
                      )),
                      SizedBox(width: 1.w,)
                    ],
                  ),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Wednesday',
                      style: GoogleFonts.inter(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400
                      )),
                      SizedBox(width: 0.w),
                      Text('09:00:00 - 22:00:00',
                      style: GoogleFonts.inter(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400
                      )),
                      SizedBox(width: 11.w,)
                    ],
                  ),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Friday',
                      style: GoogleFonts.inter(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400
                      )),
                      SizedBox(width: 10.w),
                      Text('09:00:00 - 22:00:00',
                      style: GoogleFonts.inter(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400
                      )),
                      SizedBox(width: 0.w,)
                    ],
                  ),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Saturday',
                      style: GoogleFonts.inter(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400
                      )),
                      SizedBox(width: 0.w),
                      Text('09:00:00 - 22:00:00',
                      style: GoogleFonts.inter(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400
                      )),
                      SizedBox(width: 4.w,)
                    ],
                  ),
                  
                ],
              ),
            ),  
            ),
            SizedBox(height: 14.h),
             Align(
              alignment: Alignment.centerLeft,
              child: Text('Photo',
              style: GoogleFonts.inter(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500
              ))),     
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: const Color(0xffD9D9D9))
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SvgPicture.asset(IconsConstants.edit,height: 24.h,width: 24.w,),
                    SizedBox(height: 10.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: SvgPicture.asset(
                            IconsConstants.photoAdd
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height:14.h),
             Align(
              alignment: Alignment.centerLeft,
              child: Text('Company Information',
              style: GoogleFonts.inter(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500
              ))),  
            CommonUseTfield(
              hintText: 'Enter Company Info....',
              maxlines: 4,
              suffixicon: Padding(
                padding:  EdgeInsets.all(10.sp),
                child: SvgPicture.asset(IconsConstants.edit),
              )),
             SizedBox(height:14.h),
             Align(
              alignment: Alignment.centerLeft,
              child: Text('Contact Us',
              style: GoogleFonts.inter(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500
              ))),  
            Container(
              height: 269.h,
              width: 362.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: const Color(0xffD9D9D9))
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SvgPicture.asset(
                          IconsConstants.edit,
                          height: 24.h,width: 24.w,
                        )
                      ],
                    ),
                    SizedBox(height: 10.h),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset('assets/images/location imge0.png',height: 176.h,width: 335.w,fit: BoxFit.cover,)),
                    const Spacer(),
                  Row(
                    children: [
                      SvgPicture.asset(IconsConstants.location),
                      Text('Search for Area, Street Name',
                      style: GoogleFonts.inter(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff7E7B7B)
                      ),)
                    ],
                  )
                  ],
                ),
              ),
            ),
            SizedBox(height: 30.h,)      
          ],
        ),
      ),
    );
  }
}

class CommonUseTfield extends StatelessWidget {
  const CommonUseTfield({
    super.key,
  required this.hintText,
  this.suffixicon,
  this.maxlines,
  this.hintStyle
  });
  final String hintText;
  final Widget? suffixicon;
  final int? maxlines;
  final TextStyle? hintStyle;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxlines,
      cursorColor: ColorConstants.orangeColor,
      decoration: InputDecoration(
        hintText: hintText,
       hintStyle: hintStyle ?? GoogleFonts.inter(
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
      ),
        suffixIcon: suffixicon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.sp),
          borderSide: const BorderSide(color: Color(0xffD9D9D9))
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.sp),
          borderSide: const BorderSide(color: ColorConstants.orangeColor)
        ),
         enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.sp),
          borderSide: const BorderSide(color: Color(0xffD9D9D9))
        ),
      ),
    );
  }
}