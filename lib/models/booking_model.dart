import 'package:flutter/material.dart';

class BookingCardModel {
  final String title;
  final String date;
  final String price;
  final String bookingId;
  final String phoneNumber;
  final String buttonText;
  final Color buttonBackgroundColor;
  final Color buttonTextColor;
  final Color buttonBorderColor;

  BookingCardModel({
    required this.title,
    required this.date,
    required this.price,
    required this.bookingId,
    required this.phoneNumber,
    required this.buttonText,
    required this.buttonBackgroundColor,
    required this.buttonTextColor,
    required this.buttonBorderColor,
  });
}
