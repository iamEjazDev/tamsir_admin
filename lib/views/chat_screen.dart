import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tamsir_admin/constanats/color_constants.dart';
import 'package:tamsir_admin/constanats/icons_constants.dart';
import 'package:tamsir_admin/controllers/chatcontroller.dart';
import 'package:tamsir_admin/controllers/languagecontroller.dart';

class ChatScreen extends StatelessWidget {
  ChatScreen({super.key});

  final ChatController chatController = Get.put(ChatController());
   final LanguageController languageController = Get.put(LanguageController());

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
                Text('chat_screen'.tr,
                    style: GoogleFonts.inter(
                    fontSize: 24.sp, fontWeight: FontWeight.w600)),
                SizedBox(width: 28.w),
              ],
            ),
          ),
          SizedBox(height: 16.h),
          const Divider(
            color: Color(0xffD9D9D9),
            thickness: 2,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('chat_message'.tr,
                  style: GoogleFonts.inter(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500
                  )),
                   Text('chat_see_all'.tr,
                  style: GoogleFonts.inter(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xffAAAAAA)
                  ))
                ],
               ),
          ),
          SizedBox(height: 13.h),
          Expanded(
            child: Obx(() => ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: chatController.messages.length,
              itemBuilder: (context, index) {
                var message = chatController.messages[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: ColorConstants.whiteColor,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                              width: 1, color: const Color(0xffD9D9D9)),
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 10,
                              offset: Offset(0, 5),
                              spreadRadius: 0,
                              color: Color(0xff000000),
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 10.h),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(width: 10.w),
                                Image.asset(
                                  message['image']!,
                                  height: 52.h,
                                  width: 52.w,
                                ),
                                SizedBox(width: 15.w),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      message['name']!,
                                      style: GoogleFonts.inter(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      message['message']!,
                                      style: GoogleFonts.inter(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w400,
                                        color: const Color(0xffB5B5B5),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const Divider(color: Color(0xffD9D9D9)),
                            Row(
                              children: [
                                SizedBox(width: 9.w),
                                Image.asset(
                                  'assets/images/buildings.png',
                                  height: 31.sp,
                                  width: 31.sp,
                                ),
                                SizedBox(width: 9.w),
                                Text(
                                  'Cement store in Ghala Industrial City',
                                  style: GoogleFonts.inter(
                                    fontSize: 15.5.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 13.h),
                    ],
                  ),
                );
              },
            )),
          )
        ],
      ),
    );
  }
}
