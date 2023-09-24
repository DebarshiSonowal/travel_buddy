import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class PriceIndependentWidget extends StatelessWidget {
  const PriceIndependentWidget({
    super.key,
    required this.label,
    required this.value,
  });

  final String label, value;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: GoogleFonts.roboto().copyWith(
            fontSize: 11.sp,
            color: Colors.black,
            // fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          value,
          style: GoogleFonts.roboto().copyWith(
            fontSize: 11.sp,
            color: Colors.black54,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}