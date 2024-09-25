import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tamsir_admin/constanats/color_constants.dart';
import 'package:tamsir_admin/constanats/icons_constants.dart';
import 'package:tamsir_admin/controllers/carousel_controller.dart';
import 'package:tamsir_admin/views/edit_service.dart';
import 'package:tamsir_admin/views/pages/onboarding_screen.dart';

class ServiceName extends StatelessWidget {
  final CarouselController carouselController = Get.put(CarouselController());

   ServiceName({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.whiteColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 300.h,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  PageView.builder(
                    itemCount: carouselController.imageList.length,
                    onPageChanged: (index) {
                      carouselController.updateIndex(index);
                    },
                    itemBuilder: (context, index) {
                      return Stack(
                        children: [
                          Image.asset(
                            carouselController.imageList[index],
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ),
                        ],
                      );
                    },
                  ),
                  Positioned(
                    top: 40.h,
                    left: 18.w,
                    child: GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: CircleAvatar(
                        radius: 20.h,
                        backgroundColor: ColorConstants.whiteColor,
                        child: SvgPicture.asset(IconsConstants.arrowLeft),
                      ),
                    )),
                  Positioned(
                    bottom: 10,
                    child:Obx(() => Container(
                      height: 27.h,
                      width: 80.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(55),
                        color: const Color(0xff000000).withOpacity(.50)
                      ),
                      child: Center(
                        child: Text(
                          '${carouselController.currentIndex.value + 1}/${carouselController.imageList.length}',
                          style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w400,color: ColorConstants.whiteColor),
                        ),
                      ),
                    )),
                  ),
                ],
              ),
            ),
          SizedBox(height: 25.h),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Container(
              height: 120.h,
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
              SizedBox(height: 7.h,),
              Text('Services Name',
                style: GoogleFonts.inter(
                  fontSize: 25.sp,
                  fontWeight: FontWeight.w600
              )),
              SizedBox(height: 3.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(IconsConstants.stars),
                  Text('(9)',
                  style: GoogleFonts.inter(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xffA3A3A3)
                  ))
                ],
              ),
              const Divider(),
                 RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '100',
                      style: GoogleFonts.inter(
                        fontSize: 23.sp,
                        fontWeight: FontWeight.w500,
                        color: ColorConstants.redColor
                    )),
                    TextSpan(
                      text: ' OMR',
                      style: GoogleFonts.inter(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                        color: ColorConstants.redColor
                    )),  
                  ]
                ))
              ],
             ),
            ),
          ),
          SizedBox(height: 11.h),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Container(
              height: 113.h,
              padding: EdgeInsets.all(5.h),
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
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Description',
                  style: GoogleFonts.inter(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600
                  )),
                ),
                const SizedBox(height: 3),
                Text('Family Boat (CabinCruiser) Quicksilver Activ \n855 Model 2014 Motors Mercury 2X200HP \nprice Negotiable',
                style: GoogleFonts.inter(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w400
                ))
              ],
            ),
            ),
          ),
          SizedBox(height: 10.h),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
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
                SizedBox(height: 3.h),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 10.w),
                    child: Text('Select Tmsir Type:',
                    style: GoogleFonts.inter(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600
                    ),),
                  ),
                ),
            Expanded(
            child: ListView.builder(
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding:  EdgeInsets.symmetric(horizontal: 8.w),
                child: const CommonUseListRow(),
              );}))
            ]))),
           SizedBox(height: 13.h),
           Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
             child: Container(
              padding: const EdgeInsets.all(10),
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                   Text('Items',
                   style: GoogleFonts.inter(
                   fontSize: 19.sp,
                   fontWeight: FontWeight.w500,
                   color: const Color.fromRGBO(209, 213, 219, 1)
                   )),
                   Text('3',
                   style: GoogleFonts.inter(
                   fontSize: 18.sp,
                   fontWeight: FontWeight.w400
                   )),
                   ],
                  ),
                const Divider(color: Color(0xffD9D9D9)),
                  Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                   Text('Sub Total ',
                   style: GoogleFonts.inter(
                   fontSize: 19.sp,
                   fontWeight: FontWeight.w500,
                   color: const Color.fromRGBO(209, 213, 219, 1)
                  )),
                  Text('5 OMR',
                  style: GoogleFonts.inter(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w400
                  )),
                  ],
                 ),
                const Divider( color: Color(0xffD9D9D9)),
               Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
               Text('Total ',
               style: GoogleFonts.inter(
               fontSize: 19.sp,
               fontWeight: FontWeight.w500,
               color: const Color.fromRGBO(209, 213, 219, 1)
               )),
               Text('10 OMR',
               style: GoogleFonts.inter(
               fontSize: 18.sp,
               fontWeight: FontWeight.w400
               )),
               ],
              ),
             ],
             ),
            ),
           ),
           SizedBox(height: 16.h),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 18.0),
             child: CommonUseButton(
              height: 52.h, 
              width: 392.w, 
              text: 'Edit', 
              fontSize: 25.sp, 
              fontWeight: FontWeight.w500, 
              textColor: ColorConstants.whiteColor, 
              backgroundColor: ColorConstants.orangeColor,
              borderradius: BorderRadius.circular(15), 
              onPressed: (){Get.to(const EditService());}),
           ),
           SizedBox(height: 21.h,)
           ],
          ),
      ),
      );
  }
}

class CommonUseListRow extends StatelessWidget {
  const CommonUseListRow({
    super.key,
  this.icon,
  });
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 78.h,
          width: 78.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(9),
            color: const Color(0xffD9D9D9)
          ),
        )
      ],
    );
  }
}
