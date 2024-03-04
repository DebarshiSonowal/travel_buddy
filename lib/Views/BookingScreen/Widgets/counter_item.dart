import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../../Constants/constants.dart';
import '../../../Models/Counter/counter_info.dart';

class CounterItem extends StatelessWidget {
  const CounterItem({
    super.key,
    required this.item,
  });

  final CounterInfoModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45.w,
      decoration: BoxDecoration(
          color: Constants.primaryColor,
          borderRadius: BorderRadius.circular(15)),
      padding: EdgeInsets.symmetric(
        horizontal: 3.w,
        vertical: 0.5.h,
      ),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(10),
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 1.w,
              vertical: 0.2.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.desk,
                  color: Constants.primaryColor,
                  size: 15.sp,
                ),
                SizedBox(
                  width: 0.w,
                ),
                SizedBox(
                  width: 30.w,
                  child: Text(
                    item.name ?? "Counter Name",
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.roboto().copyWith(
                      fontSize: 9.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  width: 2.w,
                ),
              ],
            ),
          ),
          SizedBox(
            width: 40.w,
            child: Text(
              item.address ?? "Counter Name",
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.roboto().copyWith(
                fontSize: 8.sp,
                color: Colors.black,
                // fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Icon(
            Icons.arrow_drop_down,
            color: Colors.black,
            size: 15.sp,
          ),
        ],
      ),
    );
  }
}
