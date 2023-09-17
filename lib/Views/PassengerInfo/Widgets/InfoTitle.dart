import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class InfoTitle extends StatelessWidget {
  const InfoTitle({
    super.key,
    required this.title,
    required this.value,
  });

  final String title, value;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: GoogleFonts.roboto().copyWith(
            fontSize: 10.5.sp,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          value,
          style: GoogleFonts.roboto().copyWith(
            fontSize: 8.5.sp,
            color: Colors.black,
            // fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}