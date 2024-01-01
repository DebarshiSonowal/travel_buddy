import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';
import 'package:travel_buddy/main.dart';

import '../../../Common/back_button.dart';
import '../../../Constants/assets.dart';
import '../../../Constants/constants.dart';
import '../../BookingScreen/Widgets/rating_button.dart';

class CounterAppBar extends ConsumerWidget {
  const CounterAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 4.w,
        vertical: 1.h,
      ),
      width: double.infinity,
      height: 15.h,
      decoration: const BoxDecoration(
        color: Constants.primaryColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BackButtonCustom(),
              Image.asset(
                Assets.colorLogo,
                scale: 26,
              ),
            ],
          ),
          Text(
            "${ref.watch(repositoryProvider).selectedVehicle?.name}",
            style: GoogleFonts.roboto().copyWith(
              fontSize: 14.sp,
              color: Colors.black,
              // fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            children: [
              Text(
                "18:00",
                style: GoogleFonts.roboto().copyWith(
                  fontSize: 10.sp,
                  color: Colors.black,
                  // fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 0.5.w,
              ),
              Icon(
                Icons.arrow_forward,
                color: Colors.black,
                size: 12.sp,
              ),
              SizedBox(
                width: 0.5.w,
              ),
              Text(
                DateFormat("dd MMM, yyyy").format(DateFormat("yyyy-MM-dd").parse(ref.watch(repositoryProvider).dateVal)),
                style: GoogleFonts.roboto().copyWith(
                  fontSize: 10.sp,
                  color: Colors.black87,
                  // fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                ref.watch(repositoryProvider).startLoc,
                style: GoogleFonts.roboto().copyWith(
                  fontSize: 10.sp,
                  color: Colors.black,
                  // fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 0.5.w,
              ),
              Icon(
                Icons.arrow_forward,
                color: Colors.black,
                size: 12.sp,
              ),
              SizedBox(
                width: 0.5.w,
              ),
              Text(
                ref.watch(repositoryProvider).endLoc,
                style: GoogleFonts.roboto().copyWith(
                  fontSize: 10.sp,
                  color: Colors.black87,
                  // fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 43.w,
              ),
              const RatingButton(),
            ],
          ),
        ],
      ),
    );
  }
}
