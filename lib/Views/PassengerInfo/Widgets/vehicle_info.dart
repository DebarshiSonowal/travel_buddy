import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../passenger_info.dart';
import 'InfoTitle.dart';

class VehicleInfo extends StatelessWidget {
  const VehicleInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 1.h,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 10.w,
      ),
      height: 17.h,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Vehicle Information",
            style: GoogleFonts.roboto().copyWith(
              fontSize: 11.sp,
              color: Colors.black,
              // fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 4.w,
              vertical: 0.2.h,
            ),
            width: double.infinity,
            height: 14.h,
            child: const Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InfoTitle(
                      title: "Pick-Up",
                      value: "Itanagar",
                    ),
                    InfoTitle(
                      title: "Destination",
                      value: "Guwahati",
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InfoTitle(
                      title: "Time",
                      value: "18:00",
                    ),
                    InfoTitle(
                      title: "Reach Time",
                      value: "05:30",
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InfoTitle(
                      title: "Counter",
                      value: "Capital Travel",
                    ),
                    InfoTitle(
                      title: "Vehicle",
                      value: "Toyota Innova",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}