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
          child: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: Column(
              children: [
                const CounterAppBar(),
                Container(
                  height: 71.h,
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(
                    horizontal: 2.w,
                    vertical: 2.h,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const InfoCard(),
                      SizedBox(
                        height: 2.h,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 2.5.w,
                          vertical: 1.h,
                        ),
                        width: 70.w,
                        height: 50.h,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            FirstLine(
                              selected: selected,
                              onTap: (val) {
                                setState(() {
                                  if (selected.contains(0)) {
                                    selected.remove(0);
                                  } else {
                                    selected.add(0);
                                  }
                                });
                              },
                              id: 0,
                            ),
                            Divider(
                              thickness: 0.2.h,
                            ),
                            OtherLines(
                              ids: const [1, 2, 3, 4],
                              selected: selected,
                              onTap: (int id) {
                                setState(() {
                                  if (selected.contains(id)) {
                                    selected.remove(id);
                                  } else {
                                    selected.add(id);
                                  }
                                });
                              },
                            ),
                            Divider(
                              thickness: 0.2.h,
                            ),
                            OtherLines(
                              ids: const [5, 6, 7, 8],
                              selected: selected,
                              onTap: (int id) {
                                setState(() {
                                  if (selected.contains(id)) {
                                    selected.remove(id);
                                  } else {
                                    selected.add(id);
                                  }
                                });
                              },
                            ),
                            Divider(
                              thickness: 0.2.h,
                            ),
                            OtherLines(
                              ids: const [9, 10, 11, 12],
                              selected: selected,
                              onTap: (int id) {
                                setState(() {
                                  if (selected.contains(id)) {
                                    selected.remove(id);
                                  } else {
                                    selected.add(id);
                                  }
                                });
                              },
                            ),
                            Divider(
                              thickness: 0.2.h,
                            ),
                            OtherLines(
                              ids: const [13, 14, 15, 16],
                              selected: selected,
                              onTap: (int id) {
                                setState(() {
                                  if (selected.contains(id)) {
                                    selected.remove(id);
                                  } else {
                                    selected.add(id);
                                  }
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
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
      ),
    );
  }
}






