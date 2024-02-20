import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../../Common/back_button.dart';
import '../../../Constants/assets.dart';
import '../../../Constants/constants.dart';

class HelpAppBar extends StatelessWidget {
  const HelpAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 4.w,
        right: 4.w,
        top: 4.h,
        bottom: 2.h,
      ),
      decoration: const BoxDecoration(
        color: Constants.primaryColor,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(30),
          bottomLeft: Radius.circular(30),
        ),
      ),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
            "Help!",
            style: GoogleFonts.roboto().copyWith(
              fontSize: 19.sp,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}