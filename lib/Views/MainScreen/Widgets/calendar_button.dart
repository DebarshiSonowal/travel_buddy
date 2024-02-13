import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class CalendarButton extends StatelessWidget {
  const CalendarButton({super.key, required this.date});

  final String date;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.calendar_month,
          size: 22.sp,
        ),
        SizedBox(
          width: 1.w,
        ),
        SizedBox(
          width: 22.w,
          child: Column(
            children: [
              Text(
                "Date of journey",
                style: GoogleFonts.roboto()
                    .copyWith(fontSize: 7.sp, color: Colors.black45),
              ),
              Text(
                date,
                style: GoogleFonts.roboto().copyWith(
                  fontSize: 9.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}