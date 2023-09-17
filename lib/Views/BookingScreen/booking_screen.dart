import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:travel_buddy/Constants/routes.dart';
import 'package:travel_buddy/Router/navigator.dart';

import '../../Constants/assets.dart';
import '../../Constants/constants.dart';
import 'Widgets/booking_app_bar.dart';
import 'Widgets/counter_item.dart';
import 'Widgets/stats_widget.dart';
import 'Widgets/vehicle_item.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 23.h,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      const BookingAppBar(),
                      GestureDetector(
                        onTap: () {
                          Navigation.instance.navigate(Routes.seatLayout);
                        },
                        child: const StatsWidget(),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 9.h,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return const CounterItem();
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: 4.w,
                      );
                    },
                    itemCount: 5,
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return const VehicleItem();
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: 2.h,
                      );
                    },
                    itemCount: 10,
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
