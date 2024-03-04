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
    final data = ref.watch(repositoryProvider);
    return Container(
      padding: EdgeInsets.only(
        left: 4.w,
        right: 4.w,
        bottom: 1.h,
        top: 3.h,
      ),
      width: double.infinity,
      height: 17.h,
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
              BackButtonCustom(
                onClick: () {
                  ref.read(repositoryProvider).clearLayouts();
                },
              ),
              Image.asset(
                Assets.colorLogo,
                scale: 26,
              ),
            ],
          ),
          Text(
            "${data.selectedVehicle?.name}",
            style: GoogleFonts.roboto().copyWith(
              fontSize: 14.sp,
              color: Colors.black,
              // fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            children: [
              Text(
                DateFormat("HH:mm aa")
                    .format(DateFormat("HH:mm").parse(data.start_time)),
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
                DateFormat("dd MMM, yyyy")
                    .format(DateFormat("yyyy-MM-dd").parse(data.dateVal)),
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
              SizedBox(
                width: 30.w,
                child: Text(
                  data.startLoc,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.roboto().copyWith(
                    fontSize: 10.sp,
                    color: Colors.black,
                    // fontWeight: FontWeight.bold,
                  ),
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
              SizedBox(
                width: 30.w,
                child: Text(
                  data.endLoc,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.roboto().copyWith(
                    fontSize: 10.sp,
                    color: Colors.black87,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
              ),
             const Spacer(),
              const RatingButton(),
            ],
          ),
        ],
      ),
    );
  }
}
