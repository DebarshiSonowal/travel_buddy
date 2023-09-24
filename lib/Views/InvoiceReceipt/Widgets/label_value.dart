import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class LabelValue extends StatelessWidget {
  LabelValue({
    super.key,
    required this.label,
    required this.value,
    this.is_right,
  });

  final String label, value;
  bool? is_right = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: value.length<10?25.w:30.w,
      child: Column(
        crossAxisAlignment:( is_right??false)?CrossAxisAlignment.start:CrossAxisAlignment.end,
        children: [
          Text(
            label,
            style: GoogleFonts.roboto().copyWith(
              fontSize: 11.sp,
              color: Colors.black87,
              // fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            value,
            style: GoogleFonts.roboto().copyWith(
              fontSize: 13.sp,
              color: Colors.black,
              // fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
