import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../../Common/back_button.dart';
import '../../../Constants/assets.dart';
import '../../../Constants/constants.dart';
import '../../BookingScreen/Widgets/rating_button.dart';

class CounterAppBar extends StatelessWidget {
  const CounterAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 4.w,
        vertical: 1.5.h,
      ),
      width: double.infinity,
      height: 18.h,
      decoration: const BoxDecoration(
        color: Constants.primaryColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BackButtonCustom(),
              Image.asset(
                Assets.colorLogo,
                scale: 20,
              ),
            ],
          ),

          Text(
            "Counter Name",
            style: GoogleFonts.roboto().copyWith(
              fontSize: 15.sp,
              color: Colors.black,
              // fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            children: [
              Text(
                "18:00",
                style: GoogleFonts.roboto().copyWith(
                  fontSize: 10.sp,
                  color: Colors.black,
                  // fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 0.5.w,
              ),
              Icon(
                Icons.arrow_forward,
                color: Colors.black,
                size: 12.sp,
              ),
              SizedBox(
                width: 0.5.w,
              ),
              Text(
                "05:30 Fri, 8 Sep",
                style: GoogleFonts.roboto().copyWith(
                  fontSize: 10.sp,
                  color: Colors.black87,
                  // fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "Itanagar",
                style: GoogleFonts.roboto().copyWith(
                  fontSize: 10.sp,
                  color: Colors.black,
                  // fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 0.5.w,
              ),
              Icon(
                Icons.arrow_forward,
                color: Colors.black,
                size: 12.sp,
              ),
              SizedBox(
                width: 0.5.w,
              ),
              Text(
                "Guwahati",
                style: GoogleFonts.roboto().copyWith(
                  fontSize: 10.sp,
                  color: Colors.black87,
                  // fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 43.w,
              ),
              const RatingButton(),
            ],
          ),
        ],
      ),
    );
  }
}