import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:sizer/sizer.dart';
import 'package:travel_buddy/Constants/assets.dart';
import 'package:travel_buddy/Constants/constants.dart';
import 'dart:math' as math;
class IntroScreenData {
  static final introScreens = [
    PageViewModel(
      // title: "",
      decoration: const PageDecoration(
        // pageColor: Constants.primaryColor,
        boxDecoration: BoxDecoration(
          color: Constants.primaryColor,
        ),
      ),
      titleWidget: Column(
        children: [
          SizedBox(
            height: 10.h,
          ),
          SizedBox(
            width: 42.w,
            child: AutoSizeText(
              "Decide your destination",
              style: GoogleFonts.roboto().copyWith(
                fontSize: 22.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
      bodyWidget: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 42.w,
            child: AutoSizeText(
              "and find a ticket",
              style: GoogleFonts.roboto().copyWith(
                  // fontSize: 19.sp,
                  ),
              stepGranularity: 1.sp,
              minFontSize: 17.sp,
              maxLines: 1,
            ),
          ),
          SizedBox(
            height: 6.h,
          ),
          SizedBox(
            width: 80.w,
            height: 25.h,
            child: Transform(
              alignment: Alignment.center,
              transform: Matrix4.rotationY(math.pi),
              child: Image.asset(
                Assets.destinationLogo,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),

      // image: const Center(child: Icon(Icons.android)),
    ),
  ];
}
