import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../Common/back_button.dart';
import '../../../Constants/assets.dart';
import '../../../Constants/constants.dart';

class BookingAppBar extends StatelessWidget {
  const BookingAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 23.h,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 12.h,
            decoration: const BoxDecoration(
              color: Constants.primaryColor,
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(35),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(
                left: 4.w,
                top: 2.h,
                right: 2.w,
                bottom: 5.h,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const BackButtonCustom(),
                  Image.asset(
                    Assets.colorLogo,
                    scale: 20,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
