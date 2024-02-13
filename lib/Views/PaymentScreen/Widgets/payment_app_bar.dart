import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../../Common/back_button.dart';
import '../../../Constants/assets.dart';
import '../../../Constants/constants.dart';
import '../../../main.dart';

class PaymentAppbar extends ConsumerWidget {
  const PaymentAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(repositoryProvider);
    return SafeArea(
      child: Container(
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text.rich(
                  textAlign: TextAlign.center,
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "Hi, ",
                        style: GoogleFonts.roboto().copyWith(
                          fontSize: 12.sp,
                          color: Colors.black,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: (data.contactDetails.isNotEmpty
                            ? data.contactDetails.first.passenger_name ?? ""
                            : ""),
                        style: GoogleFonts.roboto().copyWith(
                          fontSize: 12.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  "Seat: ${data.selectedLayouts.map((e) => "").toList()}",
                  style: GoogleFonts.roboto().copyWith(
                    fontSize: 8.sp,
                    color: Colors.black,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
