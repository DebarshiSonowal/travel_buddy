import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../../Repository/repository.dart';
import '../../../main.dart';

class PriceWidgetSection extends ConsumerWidget {
  const PriceWidgetSection({
    super.key,
    required this.data,
  });

  final Repository data;

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final data = ref.watch(repositoryProvider);
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: 6.w,
        vertical: 1.5.h,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Fare",
                style: GoogleFonts.roboto().copyWith(
                  fontSize: 11.sp,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "₹${data.customSeatData?.fair}",
                style: GoogleFonts.roboto().copyWith(
                  fontSize: 11.sp,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 2.w,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Gst 18%",
                      style: GoogleFonts.roboto().copyWith(
                        fontSize: 10.sp,
                        color: Colors.black87,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "₹${data.customSeatData?.gst}",
                      style: GoogleFonts.roboto().copyWith(
                        fontSize: 9.sp,
                        color: Colors.black87,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Platform Charge (20)",
                      style: GoogleFonts.roboto().copyWith(
                        fontSize: 10.sp,
                        color: Colors.black87,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "₹${data.customSeatData?.platform_charge}",
                      style: GoogleFonts.roboto().copyWith(
                        fontSize: 9.sp,
                        color: Colors.black87,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Insurance",
                      style: GoogleFonts.roboto().copyWith(
                        fontSize: 10.sp,
                        color: Colors.black87,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "₹${data.customSeatData?.insurance_charge}",
                      style: GoogleFonts.roboto().copyWith(
                        fontSize: 9.sp,
                        color: Colors.black87,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 0.5.h,
                ),
              ],
            ),
          ),
          const DottedLine(),
          SizedBox(
            height: 0.5.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Total Fare",
                style: GoogleFonts.roboto().copyWith(
                  fontSize: 11.sp,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "₹${data.customSeatData?.total_amount}",
                style: GoogleFonts.roboto().copyWith(
                  fontSize: 11.sp,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 0.5.h,
          ),
          const DottedLine(),
        ],
      ),
    );
  }
}
