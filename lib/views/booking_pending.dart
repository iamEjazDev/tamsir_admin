import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tamsir_admin/constanats/color_constants.dart';
import 'package:tamsir_admin/constanats/icons_constants.dart';
import 'package:tamsir_admin/views/pages/onboarding_screen.dart';

class BookingPending extends StatelessWidget {
  const BookingPending({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.whiteColor,
      body: BookingsOrders(
        statusText: 'Pending',
        statusTextColor: const Color(0xffFFC005),
        statusContainerColor: const Color(0xffFFECB3),
        statusBorderColor: const Color(0xffFFC005),
        firstButton: CommonUseButton(
          height: 61.h,
          width: 370.w,
          text: 'Confirm order',
          fontSize: 16.sp,
          fontWeight: FontWeight.w700,
          textColor: ColorConstants.whiteColor,
          backgroundColor: ColorConstants.greenColor,
          borderradius: BorderRadius.circular(55),
          onPressed: () {},
        ),
      ) ,
    );
  }
}

class BookingsOrders extends StatelessWidget {
  const BookingsOrders({
    super.key,
    required this.statusText,
    required this.statusBorderColor,
    required this.statusContainerColor,
    required this.statusTextColor,
   this.firstButton = const SizedBox.shrink(), 
    this.secondButton = const SizedBox.shrink(),
  });
  final String statusText;
  final Color statusBorderColor;
  final Color statusContainerColor;
  final Color statusTextColor;
  final Widget firstButton;
  final Widget secondButton;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
           SizedBox(height: 55.h),
          Padding(
        padding: const EdgeInsets.symmetric(horizontal: 13.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const CircleAvatar(
                    backgroundColor: Color(0xffF2F2F2),
                    child: Icon(Icons.arrow_back,size: 25,),
                  ),
                ),
                Text('Orders',
                style: GoogleFonts.inter(
                  fontSize: 25.sp,
                  fontWeight: FontWeight.w600
                ),),
                const SizedBox(width: 5),
              ],
            ),
          ),
          const Divider(
            color: ColorConstants.grayColor,
            thickness: 1,
          ),
          const SizedBox(height: 5),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 13),
            padding:  EdgeInsets.all(13.h),
            decoration: BoxDecoration(
              border: Border.all(color: ColorConstants.grayColor),
              borderRadius: BorderRadius.circular(15)
            ),
          child: Column(
            children: [
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(width: 9),
                  Container(
                    height: 63,
                    width: 63,
                    decoration: BoxDecoration(
                    border: Border.all(
                      color: ColorConstants.orangeColor
                    ),
                    borderRadius: BorderRadius.circular(50)
                    ),
                  child: Image.asset('assets/images/crown.png',
                  height: 38.sp,
                  width: 38.sp,),  
                  ),
                  const SizedBox(width: 21),
                  Text('Store Name',
                  style: GoogleFonts.inter(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w600
                  ),),
                  const Spacer(),
                  RichText(
                    text: TextSpan(
                      children: [
                TextSpan(
                    text: '100',
                    style:  GoogleFonts.inter(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromRGBO(239, 0, 0, 1)
                  ),
                  ),
                TextSpan(
                  text: 'OMR',
                  style: GoogleFonts.inter(
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromRGBO(239, 0, 0, 1)
                   )
                  )
                 ]
                )
               ),
               const SizedBox(width: 13,)
              ],
              ),
              const SizedBox(height:10),
              const CommonBookingRow(
                tittle: 'Booking ID',
                text: '922912',
                bordercolor: Color.fromRGBO(255, 192, 3, 0.3),
                containercolor: Color.fromRGBO(255, 192, 3, 0.3),
                textcolor:  Color.fromRGBO(255, 192, 3, 1),
              ),
              const SizedBox(height: 14),
              CommonBookingRow(
              tittle: 'Status',
              text: statusText,
              bordercolor: statusBorderColor,
              containercolor: statusContainerColor,
              textcolor: statusTextColor,),
              const SizedBox(height: 14),
              const CommonBookingRow(
              tittle: 'Booked at', 
              text: 'At Home', 
              bordercolor: Color.fromRGBO(68, 68, 68, 1) , 
              containercolor: Color.fromRGBO(215, 216, 220, 1), 
              textcolor: Color.fromRGBO(68, 68, 68, 1)),
              const SizedBox(height:31),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(width: 26),
                  SvgPicture.asset(IconsConstants.calenderClock),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
              Text('12/01/2024 , 19:00:00 - 21:00:00',
                  style: GoogleFonts.inter(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w600
                    ),),
              Text('Schedule',
                       style: GoogleFonts.inter(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(112, 120, 133, 1)
                       ),
                      ),
                    ],
                  ),
                  const Spacer()
                ],
              ),  
                const SizedBox(height: 13),
              Row(
                children: [
                  const SizedBox(width: 28,),
                  // ignore: deprecated_member_use
                  SvgPicture.asset(IconsConstants.location,height: 30.h,width: 25.w,color: const Color(0xff727272),),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Your Address',
                        style: GoogleFonts.inter(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'Your Address',
                        style: GoogleFonts.inter(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(112, 120, 133, 1)
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  const SizedBox(width: 27),
                  SvgPicture.asset(IconsConstants.nootes),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Null',
                      style: GoogleFonts.inter(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600
                      ),),
                        Text('Notes',
                      style: GoogleFonts.inter(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromRGBO(112, 120, 133, 1)
                      ),)
                    ],
                  )
                ],
              ),
              const SizedBox(height:12),
              const Divider(
                color: Color.fromRGBO(142, 142, 143, 0.5),
              ),
              const SizedBox(height: 5),
              Column(
                children: [
                  Row(
                    children: [
                    const SizedBox(width: 26),      
                      Text('Dry Cleaning',
                      style: GoogleFonts.inter(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600
                      ),),
                    ],
                  ),
                 Row(
                  children: [
                    const SizedBox(width: 26),                  
                Text('1x 80 R.O',
                  style: GoogleFonts.inter(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromRGBO(142, 142, 143, 1)
                  ),),
                  ],
                 )
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 7.0),
                child: Divider(
                  color: Color(0xffC4C4C4),
                ),
              ),
              const SizedBox(height: 3),
              Padding(
                padding: const EdgeInsets.only(left: 24,right: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Sub Total',
                    style: GoogleFonts.inter(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(142, 142, 143, 1)
                    ),),
                    Text('80',
                    style: GoogleFonts.inter(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(142, 142, 143, 1)
                    ),)
                  ],
                ),
              ),
              const SizedBox(height: 8),
               Padding(
                padding: const EdgeInsets.only(left: 24,right: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Tax',
                    style: GoogleFonts.inter(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(142, 142, 143, 1)
                    ),),
                    Text('0',
                    style: GoogleFonts.inter(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(142, 142, 143, 1)
                    ),)
                  ],
                ),
              ),
              const SizedBox(height: 8),
               Padding(
                padding: const EdgeInsets.only(left: 24,right: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Visiting Charge',
                    style: GoogleFonts.inter(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(142, 142, 143, 1)
                    ),),
                    Text('20',
                    style: GoogleFonts.inter(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(142, 142, 143, 1)
                    ),)
                  ],
                ),
              ),
              const SizedBox(height: 8),
               Padding(
                padding: const EdgeInsets.only(left: 24,right: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Total Amount ',
                    style: GoogleFonts.inter(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(142, 142, 143, 1)
                    ),),
                    Text('100',
                    style: GoogleFonts.inter(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(142, 142, 143, 1)
                    ),)
                  ],
                ),
              )
            ],
          ) ,
          ),
          const SizedBox(height:14),
          firstButton, 
          const SizedBox(height: 8),
          secondButton,
          SizedBox(height: 8.h,)  
        ],
      ),
    );
  }
}

class CommonBookingRow extends StatelessWidget {
  const CommonBookingRow({
    super.key,
  required this.tittle,
  required this.text,
  required this.bordercolor,
  required this.containercolor,
  required this.textcolor
  });
  final String tittle;
  final String text;
  final Color bordercolor;
  final Color containercolor;
  final Color textcolor;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(width:28,),
        Text(tittle,
        style: GoogleFonts.inter(
          fontSize: 15,
          fontWeight: FontWeight.w600,
        ),),
        const Spacer(),
        Container(
          height: 30,
          width: 102,
          decoration: BoxDecoration(
            color: containercolor,
            border: Border.all(
              color: bordercolor
            ),
            borderRadius: BorderRadius.circular(5)
          ),
          child: Center(
            child: Text(text,
            style: GoogleFonts.inter(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: textcolor
            ),),
          ),
        ),
        const SizedBox(width: 7,)
      ],
    );
  }
}