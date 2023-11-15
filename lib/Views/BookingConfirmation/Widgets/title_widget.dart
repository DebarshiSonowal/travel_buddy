
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal:6.w,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Travel Buddy",
                style: GoogleFonts.roboto().copyWith(
                  fontSize: 11.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Toyota Innova, 8 Seater",
                style: GoogleFonts.roboto().copyWith(
                  fontSize:10.sp,
                  color: Colors.black54,
                  // fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Icon(
            Icons.car_crash_sharp,
            color: Colors.black,
            size: 25.sp,
          ),
        ],
      ),
    );
  }
}