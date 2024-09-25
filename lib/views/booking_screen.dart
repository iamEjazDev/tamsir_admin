import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tamsir_admin/constanats/color_constants.dart';
import 'package:tamsir_admin/constanats/icons_constants.dart';
import 'package:tamsir_admin/models/booking_model.dart';
import 'package:tamsir_admin/views/booking_complete.dart';
import 'package:tamsir_admin/views/booking_pending.dart';
import 'package:tamsir_admin/views/booking_progress.dart';
import 'package:tamsir_admin/views/pages/onboarding_screen.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<BookingCardModel> bookingCards = [
      BookingCardModel(
        title: 'Wedding day preparation',
        date: '26/10/2024-3:00PM',
        price: '100 OMR',
        bookingId: '1234322',
        phoneNumber: '+ 986 9999 6666',
        buttonText: 'Pending',
        buttonBackgroundColor: const Color(0xffFFECB3),
        buttonTextColor: const Color(0xffFFC003),
        buttonBorderColor: const Color(0xffFFC003),
      ),
      BookingCardModel(
       title: 'Wedding day preparation',
        date: '26/10/2024-3:00PM',
        price: '100 OMR',
        bookingId: '1234322',
        phoneNumber: '+ 986 9999 6666',
        buttonText: 'Progress',
        buttonBackgroundColor: const Color(0xffB3B4FF),
        buttonTextColor: const Color(0xff4042E2),
        buttonBorderColor: const Color(0xff4042E2),
      ),
      BookingCardModel(
       title: 'Wedding day preparation',
        date: '26/10/2024-3:00PM',
        price: '100 OMR',
        bookingId: '1234322',
        phoneNumber: '+ 986 9999 6666',
        buttonText: 'Complete',
        buttonBackgroundColor: const Color(0xffA3E2A6),
        buttonTextColor: const Color(0xff0DB214),
        buttonBorderColor: const Color(0xff0DB214),
      ),
    ];

    return Scaffold(
      backgroundColor: ColorConstants.whiteColor,
      body: Column(
        children: [
          SizedBox(height: 62.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                  },
                  child: CircleAvatar(
                    radius: 22,
                    backgroundColor: const Color(0xffF8F8F8),
                    child: SvgPicture.asset(IconsConstants.arrowLeft),
                  ),
                ),
                Text('Orders',
                    style: GoogleFonts.inter(
                        fontSize: 25.sp, fontWeight: FontWeight.w600)),
                const SizedBox(width: 20),
              ],
            ),
          ),
          SizedBox(height: 16.h),
          Divider(color: ColorConstants.greyM, thickness: 2.h),
          SizedBox(height: 19.h),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: bookingCards.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding:  const EdgeInsets.all(8),
                  child: BookingCard(bookingCardModel: bookingCards[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class BookingCard extends StatelessWidget {
  const BookingCard({
    super.key,
    required this.bookingCardModel,
  });

  final BookingCardModel bookingCardModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        border: Border.all(color: ColorConstants.grayColor),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 7),
                  Text(
                    bookingCardModel.title,
                    style: GoogleFonts.inter(
                      color: Colors.black,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                   SizedBox(height: 6.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        bookingCardModel.date,
                        style: GoogleFonts.inter(
                          color: const Color(0xffA3A3A3),
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(width: 20),
                      Text(
                        bookingCardModel.price,
                        style: GoogleFonts.inter(
                          color: const Color(0xffEF0000),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              CommonUseButton(
                height: 30.h,
                width: 102.w,
                text: bookingCardModel.buttonText,
                fontSize: 10.sp,
                fontWeight: FontWeight.w600,
                textColor: bookingCardModel.buttonTextColor,
                backgroundColor: bookingCardModel.buttonBackgroundColor,
                bordercolor: bookingCardModel.buttonBorderColor,
                borderradius: BorderRadius.circular(5),
                onPressed: () {
                   if (bookingCardModel.buttonText == 'Pending') {
                  Get.to(const BookingPending());
                  } else if (bookingCardModel.buttonText == 'Progress') {
                   Get.to(const BookingProgress());
                  } else if (bookingCardModel.buttonText == 'Complete') {
                  Get.to(const BookingComplete());
                  }
                },
              ),
            ],
          ),
          const Divider(color: Color(0xffA3A3A3)),
          Row(
            children: [
              Text(
                'Booking ID ${bookingCardModel.bookingId}',
                style: GoogleFonts.inter(
                  color: const Color(0xffA3A3A3),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Spacer(),
              SvgPicture.asset(
                IconsConstants.call,
                height: 16.sp,
                width: 16.sp,
                // ignore: deprecated_member_use
                color: ColorConstants.orangeColor,
              ),
              Text(
                bookingCardModel.phoneNumber,
                style: GoogleFonts.inter(
                  color: ColorConstants.orangeColor,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
