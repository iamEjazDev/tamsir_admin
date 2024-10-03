import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tamsir_admin/constanats/color_constants.dart';
import 'package:tamsir_admin/constanats/icons_constants.dart';
import 'package:tamsir_admin/controllers/home_controller.dart';
import 'package:tamsir_admin/views/notification_screen.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});
   final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.orangeColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 56.h),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 15.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/images/splash_screen.png',height: 48.h,width: 62.w,),
                        ElevatedButton(
            onPressed: () {
              Get.updateLocale(const Locale("en", "US"));
            },
            child: const Text('English'),
          ),
          ElevatedButton(
            onPressed: () {
              Get.updateLocale(const Locale("ur", "PK"));
            },
            child: const Text('Urdu'),
          ),
                  GestureDetector(
                    onTap: () {
                      Get.to( NotificationScreen());
                    },
                    child: CircleAvatar(
                      radius: 24.h,
                      backgroundColor: const Color(0xffE3BE94),
                      child: SvgPicture.asset(IconsConstants.notification),
                    ),
                  )
                ],
              ),
            ),
          SizedBox(height: 24.h),
          Container(
            height: 684.h,
            width: 393.w,
            decoration: const BoxDecoration(
              color: ColorConstants.whiteColor,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
            ),
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 11.w,vertical: 17.h),
              child: Column(
                children: [
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    padding: EdgeInsets.zero,
                    children: [
                      Obx(() => buildGridItem(
                          "home_order".tr, "assets/icons/note-text.svg", controller.orders.string)),
                      Obx(() => buildGridItem(
                          "home_service".tr, "assets/icons/note-text.svg", controller.services.string)),
                      Obx(() => buildGridItem(
                          "home_products".tr, "assets/icons/note-text.svg", controller.products.string)),
                      Obx(() => buildGridItem(
                          "home_income".tr, "assets/icons/shop.svg", "${controller.income}")),
                      Obx(() => buildGridItem(
                        "home_evaluation".tr, "assets/icons/medal-star.svg",controller.evaluation.string)),
                      Obx(() => buildGridItem(
                          "home_mystore".tr, "assets/icons/shop.svg", controller.myStore.string)),
                    ],
                  ),
                ),
               
                
                  ],
                ),
            )
          )
          ],
        ),
      ),
    );
  }
}

  Widget buildGridItem(String title, String iconPath, String count) {
    return Container(
      height: 177.h,
      width: 182.w,
      decoration: BoxDecoration(
        color: ColorConstants.whiteColor,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
        color: const Color(0xffD9D9D9),width: 1),
        boxShadow: [
          BoxShadow(
            blurRadius: 0,spreadRadius: 0,
            offset: const Offset(0, 1),color: const Color(0xff000000).withOpacity(.5) 
          )
        ]
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 34.h,
            width: 35.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: const Color(0xffEFDBC4),
            ),
            child: Padding(
              padding: const EdgeInsets.all(4),
              child: SvgPicture.asset(
                // ignore: deprecated_member_use
                iconPath,height: 22.h,width: 22.w,color: ColorConstants.orangeColor,
              ),
            ),
          ),
         Text(
            count,
          style: GoogleFonts.inter(
            fontSize: 46.sp,
            fontWeight: FontWeight.w600,
            color: ColorConstants.orangeColor
          )),
          Text(title,
          style: GoogleFonts.inter(
            fontSize: 19.sp,
            fontWeight: FontWeight.w500
          ),)
        ],
      ),
    );
  }
