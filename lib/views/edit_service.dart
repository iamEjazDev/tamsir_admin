import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tamsir_admin/constanats/color_constants.dart';
import 'package:tamsir_admin/constanats/icons_constants.dart';
import 'package:tamsir_admin/views/Tab_Indicator/store_screen.dart';
import 'package:tamsir_admin/views/add_service.dart';
import 'package:tamsir_admin/views/pages/onboarding_screen.dart';

class EditService extends StatelessWidget {
  const EditService({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.whiteColor,
      body: Column(
        children: [
        SizedBox(height: 62.h),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: (){Get.back();},
                child: CircleAvatar(
                  radius: 26,
                  backgroundColor: const Color(0xffF8F8F8),
                  child: SvgPicture.asset(IconsConstants.arrowLeft)),
              ),
              Text('Services',
              style: GoogleFonts.inter(
                fontSize: 25.sp,
                fontWeight: FontWeight.w600
              )),
              SizedBox(width: 20.w,)
            ],
          ),
        ),
        SizedBox(height: 16.h),
        const Divider(color: Color(0xffD9D9D9),thickness: 2,),
        Expanded(
          child: ListView.builder(
          itemCount: 2, 
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            return  const Padding(
              padding: EdgeInsets.symmetric(vertical: 9,horizontal: 13),
              child: ServiceCard(),
            );
          },
         ),
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: CommonUseButton(
            height: 61.h, 
            width: 370.w, 
            text: 'Add New Service', 
            fontSize: 18.sp, 
            fontWeight: FontWeight.w600, 
            textColor: ColorConstants.whiteColor, 
            backgroundColor: ColorConstants.orangeColor,
            borderradius: BorderRadius.circular(55), 
            onPressed: (){Get.to(const AddService());}),
        ),
          SizedBox(height: 16.h,)
        ],
      ),
    );
  }
}