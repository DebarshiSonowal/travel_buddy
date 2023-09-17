import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../../Constants/constants.dart';

class ResentSearchItem extends StatelessWidget {
  const ResentSearchItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 3.5.w,
        vertical: 0.5.h,
      ),
      decoration: BoxDecoration(
        color: Constants.primaryColor,
        borderRadius: BorderRadius.circular(15),
      ),
      width: 40.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Itanagar",
                style: GoogleFonts.roboto().copyWith(
                  fontSize: 9.5.sp,
                  color: Colors.black,
                  // fontWeight: FontWeight.bold,
                ),
              ),
              Icon(
                Icons.arrow_forward,
                size: 10.sp,
              ),
              Text(
                "Pasighat",
                style: GoogleFonts.roboto().copyWith(
                  fontSize: 9.5.sp,
                  color: Colors.black,
                  // fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "Mon 9 Sept 2023",
                style: GoogleFonts.roboto().copyWith(
                    fontSize: 7.sp, color: Colors.black54),
              ),
            ],
          ),
        ],
      ),
    );
  }
}