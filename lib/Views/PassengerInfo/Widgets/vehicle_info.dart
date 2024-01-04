import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';

import '../../../main.dart';
import '../passenger_info.dart';
import 'InfoTitle.dart';

class VehicleInfo extends ConsumerWidget {
  const VehicleInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final repo = ref.read(repositoryProvider);
    return Container(
      margin: EdgeInsets.only(
        top: 1.h,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 10.w,
      ),
      height: 17.h,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Vehicle Information",
            style: GoogleFonts.roboto().copyWith(
              fontSize: 11.sp,
              color: Colors.black,
              // fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 4.w,
              vertical: 0.2.h,
            ),
            width: double.infinity,
            height: 14.h,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InfoTitle(
                      title: "Pick-Up",
                      value: repo.startLoc,
                    ),
                    InfoTitle(
                      title: "Destination",
                      value: repo.endLoc,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InfoTitle(
                      title: "Time",
                      value:
                          "${repo.selectedVehicle?.route_info.first.strt_time}",
                    ),
                    InfoTitle(
                      title: "Reach Time",
                      value:
                          DateFormat("HH:mm:ss").format(DateFormat("HH:mm:ss").parse(repo.selectedVehicle?.route_info.first.strt_time ?? "10:05:20").add(Duration(
                                minutes: repo.selectedVehicle?.route_info.first
                                        .travel_time ??
                                    0,
                              ))),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InfoTitle(
                      title: "Counter",
                      value:
                          repo.selectedVehicle?.counter_info.first.name ?? "",
                    ),
                    InfoTitle(
                      title: "Vehicle",
                      value: repo.selectedVehicle?.name ?? "",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
