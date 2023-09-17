import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../../Constants/constants.dart';

class RatingButton extends StatelessWidget {
  const RatingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 16.w,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 2.w,
        vertical: 0.5.h,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.star,
            color: Constants.primaryColor,
            size: 15.sp,
          ),
          SizedBox(
            width: 1.w,
          ),
          Text(
            "4.5",
            style: GoogleFonts.roboto().copyWith(
              fontSize: 9.5.sp,
              color: Colors.white,
              // fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}