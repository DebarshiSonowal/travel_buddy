
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../../Constants/constants.dart';

class Headline extends StatelessWidget {
  const Headline({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Insurance Details",
          style: GoogleFonts.roboto().copyWith(
            fontSize: 10.sp,
            color: Colors.black,
            // fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 1.w,
            vertical: 0.2.h,
          ),
          decoration: BoxDecoration(
            color: Constants.primaryColor,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Text(
            "T&C Apply",
            style: GoogleFonts.roboto().copyWith(
              fontSize: 6.sp,
              color: Colors.black,
              // fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}