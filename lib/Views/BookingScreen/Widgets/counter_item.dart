import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../../Constants/constants.dart';

class CounterItem extends StatelessWidget {
  const CounterItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50.w,
      decoration: BoxDecoration(
          color: Constants.primaryColor,
          borderRadius: BorderRadius.circular(15)),
      padding: EdgeInsets.symmetric(
        horizontal: 3.w,
        vertical: 1.h,
      ),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(10),
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 2.w,
              vertical: 0.2.h,
            ),
            child: Row(
              children: [
                const Icon(
                  Icons.desk,
                  color: Constants.primaryColor,
                ),
                SizedBox(
                  width: 2.w,
                ),
                Text(
                  "Counter Name",
                  style: GoogleFonts.roboto().copyWith(
                    fontSize: 13.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.arrow_drop_down,
            color: Colors.black,
            size: 22.sp,
          ),
        ],
      ),
    );
  }
}
