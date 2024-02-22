import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sizer/sizer.dart';
import 'package:travel_buddy/Constants/routes.dart';
import 'package:travel_buddy/Models/Layout/layout_model.dart';
import 'package:travel_buddy/Router/navigator.dart';
import 'package:travel_buddy/Services/api_provider.dart';
import 'package:travel_buddy/main.dart';

import 'Widgets/counter_layout.dart';
import 'Widgets/info_card.dart';
import 'Widgets/layout_generate.dart';
import 'Widgets/procede_button_section.dart';
import 'Widgets/seats_index_widgets.dart';

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
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(17.h),
        child:  const CounterAppBar(),
      ),
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
                Container(
                  height: 76.h,
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
                        SizedBox(
                          height: 1.h,
                        ),
                        const InfoCard(),
                        SizedBox(
                          height: 1.h,
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
                          height: 1.h,
                        ),
                        SeatsIndexWidget(selected: selected, data: data),
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


