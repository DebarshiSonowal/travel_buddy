import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:travel_buddy/Constants/constants.dart';
import 'package:travel_buddy/Constants/routes.dart';
import 'package:travel_buddy/Models/Layout/layout_model.dart';
import 'package:travel_buddy/Models/Seat/seat.dart';
import 'package:travel_buddy/Router/navigator.dart';
import 'package:travel_buddy/Services/api_provider.dart';
import 'package:travel_buddy/main.dart';

import '../../Common/back_button.dart';
import '../../Constants/assets.dart';
import '../../Services/data_provider.dart';
import '../../Widgets/loading_dialog.dart';
import '../BookingScreen/Widgets/booking_app_bar.dart';
import '../BookingScreen/Widgets/rating_button.dart';
import 'Widgets/counter_layout.dart';
import 'Widgets/first_line.dart';
import 'Widgets/info_card.dart';
import 'Widgets/last_line.dart';
import 'Widgets/layout_generate.dart';
import 'Widgets/other_lines.dart';
import 'Widgets/procede_button_section.dart';
import 'Widgets/proceed_button.dart';
import 'Widgets/seat_image.dart';
import 'Widgets/seat_layout_image.dart';

class SeatLayout extends ConsumerStatefulWidget {
  const SeatLayout({super.key});

  @override
  ConsumerState<SeatLayout> createState() => _SeatLayoutState();
}

class _SeatLayoutState extends ConsumerState<SeatLayout> {
  List<LayoutModel> selected = [];

  @override
  Widget build(BuildContext context) {
    final data=ref.watch(repositoryProvider);
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
            // physics: const NeverScrollableScrollPhysics(),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CounterAppBar(),
                Container(
                  height: 73.5.h,
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(
                    horizontal: 2.w,
                    // vertical: 0.1.h,
                  ),
                  child: SingleChildScrollView(
                    physics: const NeverScrollableScrollPhysics(),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const InfoCard(),
                        SizedBox(
                          height: 0.5.h,
                        ),
                        LayoutGenerator(
                          selected: selected,
                          (LayoutModel val) {
                            setState(() {
                              selected.remove(val);
                            });
                          },
                          (LayoutModel val) {
                            setState(() {
                              selected.add(val);
                            });
                          },
                        ),
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
                                    width: 5.w,
                                  ),
                                  SizedBox(
                                    width: 40.w,
                                    child: Text(
                                      "Seats No: ${selected.map((e) => e.label).toList()}",
                                      style: GoogleFonts.roboto().copyWith(
                                        fontSize: 10.sp,
                                        color: Colors.black,
                                        // fontWeight: FontWeight.bold,
                                      ),
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
                                    data.startLoc,
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
                                    data.endLoc,
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
                ProceedButtonSection(
                  selectTheSeats: (trip_id, seats) =>
                      selectTheSeats(trip_id, seats),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> selectTheSeats(trip_id, seats) async {
    final resp = await ApiProvider().selectSeats(trip_id, seats);
    if (resp.success ?? false) {
      debugPrint("${resp.seats}");
      final response = Navigation.instance.navigate(Routes.passengerLayout);
      if (response == null) {
        ref.read(repositoryProvider).clearContactDetails();
      } else {
        ref.read(repositoryProvider).clearContactDetails();
      }
    } else {
      Fluttertoast.showToast(msg: "Seats are not available");
    }
  }
}
