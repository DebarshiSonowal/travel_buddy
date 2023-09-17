
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../../Constants/assets.dart';
import '../../../Constants/constants.dart';

class AdvertiseBanner extends StatelessWidget {
  const AdvertiseBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 12.h,
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            // height: 12.h,
            width: 27.w,
            padding: EdgeInsets.symmetric(
              horizontal: 2.w,
              vertical: 0.5.h,
            ),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Text.rich(
                  textAlign: TextAlign.center,
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "Secure your trip at just ",
                        style: GoogleFonts.roboto().copyWith(
                          fontSize: 11.sp,
                          color: Colors.white,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: "₹15",
                        style: GoogleFonts.roboto().copyWith(
                          fontSize: 11.sp,
                          color: Constants.primaryColor,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: " per passenger",
                        style: GoogleFonts.roboto().copyWith(
                          fontSize: 11.sp,
                          color: Colors.white,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 12.h,
            width: 61.w,
            child: Image.asset(
              Assets.travelLogo,
              fit: BoxFit.cover,

              // // width: 60.w,
              // height: 14.h,
              // scale: 3.99,
            ),
          ),
        ],
      ),
    );
  }
}