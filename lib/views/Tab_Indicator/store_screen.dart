import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tamsir_admin/constanats/color_constants.dart';
import 'package:tamsir_admin/constanats/icons_constants.dart';
import 'package:tamsir_admin/controllers/store_tab_controller.dart';
import 'package:tamsir_admin/views/Tab_Indicator/store_about.dart';
import 'package:tamsir_admin/views/Tab_Indicator/store_products.dart';
import 'package:tamsir_admin/views/service_name.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
 final StoreTabController controller = Get.put(StoreTabController());
    return Scaffold(
      backgroundColor: ColorConstants.whiteColor,
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 15.w),
        child: Column(
          children: [
            SizedBox(height: 45.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 22,
                  backgroundColor: const Color(0xffF8F8F8),
                  child: SvgPicture.asset(IconsConstants.arrowLeft),
                ),
                Text('my_store'.tr,
                    style: GoogleFonts.inter(
                        fontSize: 29.sp, fontWeight: FontWeight.w600)),
                const SizedBox(width: 20),
              ],
            ),
            SizedBox(height: 22.h),
            Stack(children: [
              Container(
                  height: 145.h,
                  width: 145.w,
                  decoration: BoxDecoration(
                      color: ColorConstants.whiteColor,
                      shape: BoxShape.circle,
                      border:
                          Border.all(color: ColorConstants.orangeColor, width: 2)),
                  child: Image.asset('assets/images/store_page.png')),
              Positioned(
                bottom: 10,
                left: 100,
                child: Container(
                  height: 32.h,
                  width: 32.w,
                  decoration: BoxDecoration(
                    border: Border.all(color: ColorConstants.orangeColor),
                    shape: BoxShape.circle,
                    color: ColorConstants.whiteColor,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(4.h),
                    child: SvgPicture.asset(IconsConstants.myStore),
                  ),
                ),
              )
            ]),
            SizedBox(height: 16.h),
            Text('store_name'.tr,
                style: GoogleFonts.inter(
                    fontSize: 20.sp, fontWeight: FontWeight.w600)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(IconsConstants.stars),
         Text('(9)',
         style: GoogleFonts.inter(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                color: ColorConstants.lightgrey))
              ],
            ),
            SizedBox(height: 25.h),
             SizedBox(
              height: 47.h,
              child: TabBar(
                controller: controller.tabController,
                dividerColor: ColorConstants.orangeColor,
                dividerHeight: 1.5.h,
                indicator:  BoxDecoration(
                  color: ColorConstants.orangeColor,
                  borderRadius: BorderRadius.all(Radius.circular(5.h))
                ),
                unselectedLabelColor: ColorConstants.orangeColor,
                labelColor: Colors.white,
                tabs:   [
                  CustomTab(text: 'tab_service'.tr),
                  CustomTab(text: 'tab_product'.tr),
                  CustomTab(text: 'tab_about'.tr),
                ],
              ),
            ),
            SizedBox(height: 33.h),
            Expanded(
              child: TabBarView(
                controller: controller.tabController,
                children: [
                   buildServiceContent(),
                   buildProductContent(),
                  const StoreAbout(), 
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}

class CustomTab extends StatelessWidget {
  final String text;

  const CustomTab({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 33.h,
      width: 108.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
      ),
      child: Center(
        child: Text(
          text,
          style: GoogleFonts.inter(
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}


  Widget buildServiceContent() {
    return ListView.builder(
      itemCount: 5, 
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return  Padding(
          padding: EdgeInsets.symmetric(vertical: 9.h),
          child: const ServiceCard(),
        );
      },
    );
  }


class ServiceCard extends StatelessWidget {
  const ServiceCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to( ServiceName());
      },
      child: Container(
        padding: EdgeInsets.all(7.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          border: Border.all(color: ColorConstants.grayColor),
          boxShadow:  [
          BoxShadow(
          blurRadius: 10,offset: const Offset(0, 5),
          spreadRadius: 0,color: const Color(0xff000000).withOpacity(.10)
          )]),
        child: Row(
          children: [
            Image.asset('assets/images/store service.png'),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 6.w),
                  child: Text('service_card'.tr,
                  style: GoogleFonts.inter(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600
                  )),
                ),
                SizedBox(height: 5.h),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 6.w),
                  child: Text('This description+ text can + be \n+changed + and  + added',
                  style: GoogleFonts.inter(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xffA3A3A3),
                  )),
                ),
                SizedBox(height: 6.h),
                Row(
                  children: [
                    SizedBox(width: 6.w),
                    SvgPicture.asset(
                      IconsConstants.stars),
                    Text('(9)',
                    style: GoogleFonts.inter(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(163, 163, 163, 1),
                    )),
                    SizedBox(width: 60.w),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: '100',
                            style: GoogleFonts.inter(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w500,
                              color: ColorConstants.redColor
                          )),
                          TextSpan(
                            text: 'OMR',
                            style: GoogleFonts.inter(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: ColorConstants.redColor
                          )),  
                        ]
                      ))
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}