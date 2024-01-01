import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:travel_buddy/Constants/constants.dart';
import 'package:travel_buddy/Constants/routes.dart';
import 'package:travel_buddy/Router/navigator.dart';

import '../../Common/back_button.dart';
import '../../Constants/assets.dart';
import '../BookingScreen/Widgets/booking_app_bar.dart';
import '../BookingScreen/Widgets/rating_button.dart';
import 'Widgets/counter_layout.dart';
import 'Widgets/first_line.dart';
import 'Widgets/info_card.dart';
import 'Widgets/last_line.dart';
import 'Widgets/layout_generate.dart';
import 'Widgets/other_lines.dart';
import 'Widgets/proceed_button.dart';
import 'Widgets/seat_image.dart';
import 'Widgets/seat_layout_image.dart';

class SeatLayout extends StatefulWidget {
  const SeatLayout({super.key});

  @override
  State<SeatLayout> createState() => _SeatLayoutState();
}

class _SeatLayoutState extends State<SeatLayout> {
  List<int> selected = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CounterAppBar(),
              Container(
                height: 70.h,
                width: double.infinity,
                padding: EdgeInsets.symmetric(
                  horizontal: 2.w,
                  // vertical: 0.1.h,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const InfoCard(),
                      SizedBox(
                        height: 0.5.h,
                      ),
                      LayoutGenerator(selected: selected),
                      SizedBox(
                        height: 0.5.h,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 5.w,
                        ),
                        width: double.infinity,
                        // height: 5.h,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Seats ${selected.length}",
                                  style: GoogleFonts.roboto().copyWith(
                                    fontSize: 11.sp,
                                    color: Colors.black,
                                    // fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Text(
                                  "Seats No: ${selected.toList()}",
                                  style: GoogleFonts.roboto().copyWith(
                                    fontSize: 11.sp,
                                    color: Colors.black,
                                    // fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const Spacer(),
                                Text(
                                  "₹ 1200",
                                  style: GoogleFonts.roboto().copyWith(
                                    fontSize: 11.sp,
                                    color: Colors.black,
                                    // fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Divider(
                              thickness: 0.15.h,
                              color: Colors.black87,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Itanagar",
                                  style: GoogleFonts.roboto().copyWith(
                                    fontSize: 11.sp,
                                    color: Colors.black,
                                    // fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const Icon(
                                  Icons.arrow_forward,
                                  color: Colors.black,
                                ),
                                Text(
                                  "Guwahati",
                                  style: GoogleFonts.roboto().copyWith(
                                    fontSize: 11.sp,
                                    color: Colors.black,
                                    // fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 7.h,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Center(
                  child: ProceedButton(
                    onTap: () {
                      Navigation.instance.navigate(Routes.passengerLayout);
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
