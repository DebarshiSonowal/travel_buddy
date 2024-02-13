import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';
import 'package:travel_buddy/Models/Location/location_model.dart';
import 'package:travel_buddy/Models/LocationResponse/location_response.dart';
import 'package:travel_buddy/main.dart';

import '../../../Constants/constants.dart';
import '../../../Models/SearchVehicle/search_vehicle.dart';
import '../../../Services/data_provider.dart';
import '../../../Widgets/loading_dialog.dart';

class StatsWidget extends ConsumerWidget {
  const StatsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(repositoryProvider);
    final startData = ref.watch(searchFromProvider);
    final endData = ref.watch(searchToProvider);
    final vehicleData = ref.watch(searchVehicleProvider);

    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(
        horizontal: 8.w,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 4.w,
        vertical: 1.5.h,
      ),
      height: 12.h,
      decoration: BoxDecoration(
        color: Colors.black87,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 50.w,
                padding: EdgeInsets.symmetric(
                  horizontal: 4.w,
                  vertical: 0.5.h,
                ),
                decoration: BoxDecoration(
                  color: Constants.grey,
                  borderRadius: BorderRadius.circular(20),
                ),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    startData.when(
                      data: (LocationResponse val) {
                        return val.location.isNotEmpty?Text(
                          val.location
                              .firstWhere((element) =>
                          element.id.toString() == data.strLocVal)
                              .display_name ??
                              "",
                          style: GoogleFonts.roboto().copyWith(
                            fontSize: 11.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ):Container();
                      },
                      error: (err, s) {
                        debugPrint(err.toString());
                        return Container();
                      },
                      loading: () => Center(
                        child: LoadingDialog(),
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      size: 15.sp,
                      color: Colors.white,
                    ),
                    endData.when(
                      data: (LocationResponse val) {
                        return val.location.isNotEmpty?Text(
                          val.location
                              .firstWhere((element) =>
                          element.id.toString() == data.endLocVal)
                              .display_name ??
                              "",
                          style: GoogleFonts.roboto().copyWith(
                            fontSize: 11.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ):Container();
                      },
                      error: (err, s) {
                        debugPrint(err.toString());
                        return Container();
                      },
                      loading: () => Center(
                        child: LoadingDialog(),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 25.w,
                padding: EdgeInsets.symmetric(
                  horizontal: 4.w,
                  vertical: 0.5.h,
                ),
                decoration: BoxDecoration(
                  color: Constants.grey,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                      data.dateVal.isNotEmpty?getDateFormatted(data.dateVal):"",
                    style: GoogleFonts.roboto().copyWith(
                      fontSize: 11.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 4.w,
            ),
            child: vehicleData.when(
              data: (SearchVehicleResponse val) {
                return Text(
                  "${val.data?.vehicle_info.length} Vehicles available",
                  style: GoogleFonts.roboto().copyWith(
                    fontSize: 12.sp,
                    color: Colors.white,
                    // fontWeight: FontWeight.bold,
                  ),
                );
              },
                //8638372157
                // 942965
              error: (err, s) {
                debugPrint(err.toString());
                return Container();
              },
              loading: () => Center(
                child: LoadingDialog(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

String getDateFormatted(String date) {
  return DateFormat("dd MMM").format(DateFormat("yyyy-MM-dd").parse(date));
}
