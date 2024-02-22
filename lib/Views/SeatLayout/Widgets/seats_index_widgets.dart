import 'package:animated_digit/animated_digit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../../Models/Layout/layout_model.dart';
import '../../../Repository/repository.dart';

class SeatsIndexWidget extends StatelessWidget {
  const SeatsIndexWidget({
    super.key,
    required this.selected,
    required this.data,
  });

  final List<LayoutModel> selected;
  final Repository data;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 3.w,
      ),
      width: double.infinity,
      // height: 5.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Seats ${selected.length}",
                style: GoogleFonts.roboto().copyWith(
                  fontSize: 11.sp,
                  color: Colors.black,
                  // fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 3.w,
              ),
              SizedBox(
                width: 50.w,
                child: Text(
                  "Seats No: ${selected.map((e) => e.label).toList()}",
                  style: GoogleFonts.roboto().copyWith(
                    fontSize: 10.sp,
                    color: Colors.black,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Spacer(),
              AnimatedDigitWidget(
                duration: const Duration(seconds: 1),
                value: (selected.length ?? 1) * 600,
                textStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Colors.black,
                      fontSize: 16.sp,
                    ),
              ),
              // Text(
              //   "₹ 1200",
              //   style: GoogleFonts.roboto().copyWith(
              //     fontSize: 11.sp,
              //     color: Colors.black,
              //     // fontWeight: FontWeight.bold,
              //   ),
              // ),
            ],
          ),
          Divider(
            thickness: 0.15.h,
            color: Colors.black87,
          ),
          Row(
            children: [
              Text(
                data.startLoc,
                style: GoogleFonts.roboto().copyWith(
                  fontSize: 11.sp,
                  color: Colors.black,
                  // fontWeight: FontWeight.bold,
                ),
              ),
              const Icon(
                Icons.arrow_forward,
                color: Colors.black,
              ),
              Text(
                data.endLoc,
                style: GoogleFonts.roboto().copyWith(
                  fontSize: 11.sp,
                  color: Colors.black,
                  // fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
