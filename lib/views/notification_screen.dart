import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tamsir_admin/constanats/color_constants.dart';
import 'package:tamsir_admin/constanats/icons_constants.dart';
import 'package:tamsir_admin/controllers/notification_controller.dart';


class NotificationScreen extends StatelessWidget {
  NotificationScreen({super.key});

  final NotificationController notificationController = Get.put(NotificationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.whiteColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 23.w),
        child: Column(
          children: [
            SizedBox(height: 56.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: CircleAvatar(
                    radius: 22.h,
                    backgroundColor: const Color(0xffF8F8F8),
                    child: SvgPicture.asset(
                      IconsConstants.arrowLeft, height: 29.53.h, width: 29.53.w,
                    ),
                  ),
                ),
                Text(
                  'Notification',
                  style: GoogleFonts.inter(
                    fontSize: 27.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                CircleAvatar(
                  radius: 22.h,
                  backgroundColor: const Color(0xffF8F8F8),
                  child: SvgPicture.asset(IconsConstants.trash),
                ),
              ],
            ),
            SizedBox(height: 35.h),
            Expanded(
              child: Obx(
                () => ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: notificationController.notifications.length,
                  itemBuilder: (context, index) {
                    var notification = notificationController.notifications[index];
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 15.0),
                      child: NotificationCard(
                        image: notification.image,
                        title: notification.title,
                        text: notification.text,
                        time: notification.time,
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NotificationCard extends StatelessWidget {
  const NotificationCard({
    super.key,
    required this.image,
    required this.title,
    required this.text,
    required this.time,
  });

  final String image;
  final String title;
  final String text;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.sp),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: const Color(0xffA3A3A3)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(image),
          SizedBox(width: 15.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.poppins(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  text,
                  style: GoogleFonts.poppins(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff8A8A8A),
                  ),
                ),
              ],
            ),
          ),
          Text(
            time,
            style: GoogleFonts.poppins(
              fontSize: 10.sp,
              fontWeight: FontWeight.w400,
              color: ColorConstants.orangeColor,
            ),
          ),
        ],
      ),
    );
  }
}
