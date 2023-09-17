import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../../Common/back_button.dart';
import '../../../Constants/assets.dart';
import '../../../Constants/constants.dart';

class PassengerInfoAppbar extends StatelessWidget {
  const PassengerInfoAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 4.w,
        vertical: 1.h,
      ),
      decoration: const BoxDecoration(
        color: Constants.primaryColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      width: double.infinity,
      height: 11.5.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const BackButtonCustom(),
              Image.asset(
                Assets.colorLogo,
                fit: BoxFit.fill,
                scale: 22,
              ),
            ],
          ),
          Text(
            "Passenger Info",
            style: GoogleFonts.roboto().copyWith(
              fontSize: 18.sp,
              color: Colors.black,
              // fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}