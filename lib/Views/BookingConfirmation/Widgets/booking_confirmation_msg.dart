import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';

import '../../../Constants/constants.dart';

class BookingConfirmationMsg extends StatelessWidget {
  const BookingConfirmationMsg({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 4.w,
        vertical: 2.h,
      ),
      decoration: BoxDecoration(
        color: Constants.selected,
        borderRadius: BorderRadius.circular(25),
      ),
      width: double.infinity,
      height: 15.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.check_circle_rounded,
            color: Colors.white,
            size: 25.sp,
          ),
          Text(
            "Your bookings are confirmed",
            style: GoogleFonts.roboto().copyWith(
              fontSize: 12.sp,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "on ${DateFormat("dd MMM, yyyy HH:mm aa").format(DateTime.now())}",
            style: GoogleFonts.roboto().copyWith(
              fontSize: 11.sp,
              color: Colors.white,
              // fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}