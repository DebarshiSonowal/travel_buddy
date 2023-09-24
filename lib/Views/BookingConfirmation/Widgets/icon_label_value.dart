import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class IconLabelValue extends StatelessWidget {
  IconLabelValue({
    super.key,
    required this.firstLabel,
    required this.firstValue,
    required this.secondLabel,
    required this.secondValue,
    this.iconData,
  });

  final String firstLabel, firstValue, secondLabel, secondValue;
  IconData? iconData;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 6.w,
      ),
      height: 6.h,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 26.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  firstLabel,
                  style: GoogleFonts.roboto().copyWith(
                    fontSize: 12.sp,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  firstValue,
                  style: GoogleFonts.roboto().copyWith(
                    fontSize: secondValue.length > 10 ? 11.sp : 13.sp,
                    color: Colors.black,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          iconData != null
              ? Icon(
                  iconData,
                  color: Colors.black,
                  size: 25.sp,
                )
              : Container(),
          SizedBox(
            width: 3.w,
          ),
          SizedBox(
            width: 24.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  secondLabel,
                  style: GoogleFonts.roboto().copyWith(
                    fontSize: 12.sp,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  secondValue,
                  style: GoogleFonts.roboto().copyWith(
                    fontSize: secondValue.length > 10 ? 11.sp : 13.sp,
                    color: Colors.black,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
