import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class OrderInfo extends StatelessWidget {
  const OrderInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8.w,
        vertical: 1.5.h,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Order Id:",
                style: GoogleFonts.roboto().copyWith(
                  fontSize: 10.sp,
                  color: Colors.black54,
                  // fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "785665",
                style: GoogleFonts.roboto().copyWith(
                  fontSize: 10.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Ticket No:",
                style: GoogleFonts.roboto().copyWith(
                  fontSize: 10.sp,
                  color: Colors.black54,
                  // fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "AR4k9857",
                style: GoogleFonts.roboto().copyWith(
                  fontSize: 10.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}