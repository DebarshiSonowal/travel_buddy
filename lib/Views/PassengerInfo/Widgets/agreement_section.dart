import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../../Constants/constants.dart';

class AgreementSection extends StatelessWidget {
  const AgreementSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 8.5.h,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(
                height: 2.h,
                width: 4.w,
                child: Radio(
                  value: true,
                  groupValue: (val) {},
                  onChanged: (Object? value) {},
                ),
              ),
              SizedBox(
                width: 2.w,
              ),
              Text.rich(
                textAlign: TextAlign.center,
                TextSpan(
                  children: [
                    TextSpan(
                      text: "Yes, protect my trip at ",
                      style: GoogleFonts.roboto().copyWith(
                        fontSize: 9.sp,
                        color: Colors.black,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: "₹30",
                      style: GoogleFonts.roboto().copyWith(
                        fontSize: 9.sp,
                        color: Constants.selected,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: " (2 passenger)",
                      style: GoogleFonts.roboto().copyWith(
                        fontSize: 9.sp,
                        color: Colors.black,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 1.h,
          ),
          Row(
            children: [
              SizedBox(
                height: 2.h,
                width: 4.w,
                child: Radio(
                  value: true,
                  groupValue: (val) {},
                  onChanged: (Object? value) {},
                ),
              ),
              SizedBox(
                width: 2.w,
              ),
              Text.rich(
                textAlign: TextAlign.center,
                TextSpan(
                  children: [
                    TextSpan(
                      text: "No, I would like to proceed without insurance ",
                      style: GoogleFonts.roboto().copyWith(
                        fontSize: 9.sp,
                        color: Colors.black,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 0.5.h,
          ),
          Text.rich(
            textAlign: TextAlign.start,
            TextSpan(
              children: [
                TextSpan(
                  text: "*Platform Fee ",
                  style: GoogleFonts.roboto().copyWith(
                    fontSize: 9.sp,
                    color: Colors.black,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: "₹30",
                  style: GoogleFonts.roboto().copyWith(
                    fontSize: 9.sp,
                    color: Constants.selected,
                    fontWeight: FontWeight.bold,
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