import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../../Common/back_button.dart';
import '../../../Constants/assets.dart';
import '../../../Constants/constants.dart';

class MainScreenAppbar extends StatelessWidget {
  const MainScreenAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 10.h,
      decoration: const BoxDecoration(
        color: Constants.primaryColor,
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(35),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          left: 4.w,
          // top: 0.2.h,
          bottom: 0.5.h,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const BackButtonCustom(),
            SizedBox(
              width: 4.w,
            ),
            Text(
              "Hello, Deepak",
              style: GoogleFonts.roboto().copyWith(
                // fontWeight: FontWeight.bold,
                fontSize: 13.sp,
              ),
            ),
            SizedBox(
              width: 45.w,
            ),
            Image.asset(
              Assets.colorLogo,
              scale: 25,
            ),
          ],
        ),
      ),
    );
  }
}
