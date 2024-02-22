import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:travel_buddy/main.dart';

import '../../../Constants/constants.dart';

class RatingButton extends ConsumerWidget {
  const RatingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final data = ref.watch(repositoryProvider);
    return Container(
      width: 15.w,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 2.w,
        vertical: 0.5.h,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.star,
            color: Constants.primaryColor,
            size: 13.sp,
          ),
          SizedBox(
            width: 1.w,
          ),
          Text(
            "${data.selectedVehicle?.rating??4.5}",
            style: GoogleFonts.roboto().copyWith(
              fontSize: 8.5.sp,
              color: Colors.white,
              // fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}