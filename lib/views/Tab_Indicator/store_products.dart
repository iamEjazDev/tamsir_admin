import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tamsir_admin/constanats/color_constants.dart';
import 'package:tamsir_admin/constanats/icons_constants.dart';

Widget buildProductContent(){
return ListView.builder(
  itemCount: 5,
  padding: EdgeInsets.zero,
  itemBuilder: (context, index) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 9.h),
      child: const ProductCard(),
    );
  },);
}
class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
        Image.asset('assets/images/store product.png'),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 6.w),
              child: Text('Product Name',
              style: GoogleFonts.inter(
                fontSize: 20.sp,
                fontWeight: FontWeight.w600
              )),
            ),
            SizedBox(height: 5.h),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 6.w),
              child: Text('This description text can be changed \nand added',
              style: GoogleFonts.inter(
                fontSize: 11.sp,
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
                        text: '25',
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
        );
  }
}