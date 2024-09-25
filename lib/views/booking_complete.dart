import 'package:flutter/material.dart';
import 'package:tamsir_admin/constanats/color_constants.dart';
import 'package:tamsir_admin/views/booking_pending.dart';

class BookingComplete extends StatelessWidget {
  const BookingComplete({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor:ColorConstants.whiteColor ,
      body: BookingsOrders(
        statusText: 'Complete', 
        statusBorderColor: Color(0xff0DB214), 
        statusContainerColor: Color(0xffA3E2A6), 
        statusTextColor: Color(0xff0DB214)),
    );
  }
}